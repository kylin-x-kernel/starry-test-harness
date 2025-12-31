// compile_error!("test!");
use alloc::{boxed::Box, collections::btree_map::BTreeMap, sync::Arc};
use core::slice;

use axerrno::{AxError, AxResult};
use axfs::FileBackend;
use axhal::{
    mem::phys_to_virt,
    paging::{MappingFlags, PageSize, PageTableMut, PagingError},
};
use axsync::Mutex;
use kspin::SpinNoIrq;
use log::error;
use memory_addr::{PhysAddr, VirtAddr, VirtAddrRange};

use crate::{
    AddrSpace,
    backend::{Backend, BackendOps, alloc_frame, dealloc_frame, pages_in},
};

struct FrameState {
    inner: SpinNoIrq<FrameRef>,
}

struct FrameRef {
    count: u8,
}

impl FrameState {
    fn new(count: u8) -> Self {
        Self {
            inner: SpinNoIrq::new(FrameRef { count }),
        }
    }
}

static FRAME_TABLE: SpinNoIrq<BTreeMap<PhysAddr, Arc<FrameState>>> =
    SpinNoIrq::new(BTreeMap::new());

fn inc_frame_ref(paddr: PhysAddr) {
    let state = {
        let mut table = FRAME_TABLE.lock();
        table
            .entry(paddr)
            .or_insert_with(|| Arc::new(FrameState::new(0)))
            .clone()
    };

    let mut inner = state.inner.lock();
    inner.count += 1;
}

fn dec_frame_ref(paddr: PhysAddr) -> usize {
    let mut table = FRAME_TABLE.lock();
    let state = match table.get(&paddr) {
        Some(state) => state.clone(),
        None => return 0,
    };

    let mut inner = state.inner.lock();
    let prev = inner.count;
    if prev == 1 {
        inner.count = 0;
        table.remove(&paddr);
    } else {
        inner.count -= 1;
    }
    prev as usize
}

/// Copy-on-write mapping backend.
///
/// This corresponds to the `MAP_PRIVATE` flag.
#[derive(Clone)]
pub struct CowBackend {
    start: VirtAddr,
    size: PageSize,
    file: Option<(FileBackend, u64, Option<u64>)>,
}

impl CowBackend {
    fn alloc_new_at(
        &self,
        vaddr: VirtAddr,
        flags: MappingFlags,
        pt: &mut PageTableMut,
    ) -> AxResult {
        let frame = alloc_frame(true, self.size)?;
        inc_frame_ref(frame);

        if let Some((file, file_start, file_end)) = &self.file {
            let buf = unsafe {
                slice::from_raw_parts_mut(phys_to_virt(frame).as_mut_ptr(), self.size as _)
            };
            // vaddr can be smaller than self.start (at most 1 page) due to
            // non-aligned mappings, we need to keep the gap clean.
            let start = self.start.as_usize().saturating_sub(vaddr.as_usize());
            assert!(start < self.size as _);

            let file_start =
                *file_start + vaddr.as_usize().saturating_sub(self.start.as_usize()) as u64;
            let max_read = file_end
                .map_or(u64::MAX, |end| end.saturating_sub(file_start))
                .min((buf.len() - start) as u64) as usize;

            file.read_at(&mut &mut buf[start..start + max_read], file_start)?;
        }
        pt.map(vaddr, frame, self.size, flags)?;
        Ok(())
    }

    fn handle_cow_fault(
        &self,
        vaddr: VirtAddr,
        paddr: PhysAddr,
        flags: MappingFlags,
        pt: &mut PageTableMut,
    ) -> AxResult {
        // Use global lock only to locate the frame state, then lock the frame itself.
        let state = {
            let table = FRAME_TABLE.lock();
            table.get(&paddr).cloned().ok_or_else(|| {
                error!("handle_cow_fault: frame {:#x} not in ref table", paddr);
                AxError::BadAddress
            })?
        };

        let mut inner = state.inner.lock();
        if inner.count == 1 {
            drop(inner);
            pt.protect(vaddr, flags)?;
            return Ok(());
        }

        // Allocate and copy while holding the per-frame lock.
        let new_frame = alloc_frame(false, self.size)?;
        unsafe {
            core::ptr::copy_nonoverlapping(
                phys_to_virt(paddr).as_ptr(),
                phys_to_virt(new_frame).as_mut_ptr(),
                self.size as _,
            );
        }

        // Update refcount after copy to avoid exposing count == 1 mid-copy.
        inner.count -= 1;
        drop(inner);

         inc_frame_ref(new_frame);

        pt.remap(vaddr, new_frame, flags)?;

        Ok(())
    }
}

impl BackendOps for CowBackend {
    fn page_size(&self) -> PageSize {
        self.size
    }

    fn map(&self, range: VirtAddrRange, flags: MappingFlags, _pt: &mut PageTableMut) -> AxResult {
        debug!("Cow::map: {range:?} {flags:?}",);
        Ok(())
    }

    fn unmap(&self, range: VirtAddrRange, pt: &mut PageTableMut) -> AxResult {
        debug!("Cow::unmap: {range:?}");
        for addr in pages_in(range, self.size)? {
            if let Ok((frame, _flags, page_size)) = pt.unmap(addr) {
                assert_eq!(page_size, self.size);
                if dec_frame_ref(frame) == 1 {
                    dealloc_frame(frame, self.size);
                }
            } else {
                // Deallocation is needn't if the page is not allocated.
            }
        }
        Ok(())
    }

    fn populate(
        &self,
        range: VirtAddrRange,
        flags: MappingFlags,
        access_flags: MappingFlags,
        pt: &mut PageTableMut,
    ) -> AxResult<(usize, Option<Box<dyn FnOnce(&mut AddrSpace)>>)> {
        let mut pages = 0;
        for addr in pages_in(range, self.size)? {
            match pt.query(addr) {
                Ok((paddr, page_flags, page_size)) => {
                    assert_eq!(self.size, page_size);
                    if access_flags.contains(MappingFlags::WRITE)
                        && !page_flags.contains(MappingFlags::WRITE)
                    {
                        self.handle_cow_fault(addr, paddr, flags, pt)?;
                        pages += 1;
                    } else if page_flags.contains(access_flags) {
                        pages += 1;
                    }
                }
                // If the page is not mapped, try map it.
                Err(PagingError::NotMapped) => {
                    self.alloc_new_at(addr, flags, pt)?;
                    pages += 1;
                }
                Err(_) => return Err(AxError::BadAddress),
            }
        }
        Ok((pages, None))
    }

    fn clone_map(
        &self,
        range: VirtAddrRange,
        flags: MappingFlags,
        old_pt: &mut PageTableMut,
        new_pt: &mut PageTableMut,
        _new_aspace: &Arc<Mutex<AddrSpace>>,
    ) -> AxResult<Backend> {
        let cow_flags = flags - MappingFlags::WRITE;

        for vaddr in pages_in(range, self.size)? {
            // Copy data from old memory area to new memory area.
            match old_pt.query(vaddr) {
                Ok((paddr, _, page_size)) => {
                    assert_eq!(page_size, self.size);
                    // If the page is mapped in the old page table:
                    // - Update its permissions in the old page table using `flags`.
                    // - Map the same physical page into the new page table at the same
                    // virtual address, with the same page size and `flags`.
                    inc_frame_ref(paddr);

                    old_pt.protect(vaddr, cow_flags)?;
                    new_pt.map(vaddr, paddr, self.size, cow_flags)?;
                }
                // If the page is not mapped, skip it.
                Err(PagingError::NotMapped) => {}
                Err(_) => return Err(AxError::BadAddress),
            };
        }

        Ok(Backend::Cow(self.clone()))
    }
}

impl Backend {
    pub fn new_cow(
        start: VirtAddr,
        size: PageSize,
        file: FileBackend,
        file_start: u64,
        file_end: Option<u64>,
    ) -> Self {
        Self::Cow(CowBackend {
            start,
            size,
            file: Some((file, file_start, file_end)),
        })
    }

    pub fn new_alloc(start: VirtAddr, size: PageSize) -> Self {
        Self::Cow(CowBackend {
            start,
            size,
            file: None,
        })
    }
}
