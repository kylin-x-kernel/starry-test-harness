//! Starry CI 测试用例模板。
//!
//! 提示：
//! - 根据需要从 `test_utils` 引入工具函数，例如：
//!   `use test_utils::{append_bytes, read_bytes, temp_file, write_bytes};`
//! - 使用 `assert!`/`assert_eq!` 等断言表达预期；失败时测试会自动中断并输出原因。

use std::io::{Read, Write};
use vsock::{VsockAddr, VsockListener, VMADDR_CID_ANY};

const DATA_SIZE: usize = 100 * 1024; // 100KB
const PORT: u32 = 1234;

#[test]
fn vsock_echo_smoke() {
    // 1. bind the address
    let addr = VsockAddr::new(VMADDR_CID_ANY, PORT);
    let listener = VsockListener::bind(&addr).expect("VSOCK-GUEST: Failed to bind to vsock");

    // 2. wait for client connection
    let (mut stream, client_addr) = listener.accept().expect("VSOCK-GUEST: accept failed");
    println!("VSOCK-GUEST: Accepted connection from CID:{} Port:{}", client_addr.cid(), client_addr.port());

    // --- Phase 1: Receive from Host ---    
    let mut received_count = 0;
    let mut buffer = [0u8; 4096]; // 4KB buffer
    while received_count < DATA_SIZE {
        let n = stream.read(&mut buffer).expect("VSOCK-GUEST: read failed");
        assert!(n > 0, "VSOCK-GUEST: Guest disconnected unexpectedly during Phase 1");
        assert!(buffer[0..n].iter().all(|&x| x == 65u8), "VSOCK-GUEST: Guest received invalid data during Phase 1");
        received_count += n;
    }
    // Send the received length to host for confirmation
    let len_bytes = (received_count as u64).to_be_bytes();
    stream.write_all(&len_bytes).expect("VSOCK-GUEST: failed to send ack len");

    // --- Phase 2: Send to Host ---
    let chunk = [66u8; 1024]; // 1KB of 'B'
    let mut sent_count = 0;
    while sent_count < DATA_SIZE {
        stream.write_all(&chunk).expect("VSOCK-GUEST: write failed");
        sent_count += chunk.len();
    }
    
    // wait for ack message from host
    println!("VSOCK-GUEST: [Phase 2] Waiting for Host ack...");
    let mut ack_buf = [0u8; 8];
    stream.read_exact(&mut ack_buf).expect("VSOCK-GUEST: failed to read ack len");
    let ack_len = u64::from_be_bytes(ack_buf);
    assert_eq!(ack_len, sent_count as u64, "VSOCK-GUEST: Guest received wrong amount of data!");

}
