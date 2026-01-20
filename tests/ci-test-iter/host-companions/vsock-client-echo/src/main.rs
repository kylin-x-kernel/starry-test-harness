// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2025 Weikang Guo <guoweikang.kernel@gmail.com>
// Copyright (C) 2025 KylinSoft Co., Ltd. <https://www.kylinos.cn/>
// See LICENSE for license details.
// 
// This file has been modified by KylinSoft on 2025.

//! Driver for the Arm Generic Interrupt Controller version 3 (or 4).

// VSOCK Client for Host-side Testing
// Connects to StarryOS guest VM, then sends and recvs test data

use anyhow::{Context, Result};
use std::io::{Read, Write};
use std::time::Duration;
use vsock::{VsockAddr, VsockStream};

const GUEST_CID: u32 = 103; // QEMU guest CID configured in starry_vm_runner.py
const GUEST_PORT: u32 = 1234; // Port where guest test is listening
const MAX_RETRIES: u32 = 30; // Maximum connection retries
const RETRY_DELAY_MS: u64 = 1000; // Delay between retries (1 second)
const DATA_SIZE: usize = 100 * 1024; // 100KB

fn main() -> Result<()> {
    // Retry loop for connecting to guest
    let mut stream = None;
    for attempt in 1..=MAX_RETRIES {
        match VsockStream::connect(&VsockAddr::new(GUEST_CID, GUEST_PORT)) {
            Ok(s) => {
                println!("VSOCK-HOST: Connected successfully!");
                stream = Some(s);
                break;
            }
            Err(e) => {
                std::thread::sleep(Duration::from_millis(RETRY_DELAY_MS));
            }
        }
    }
    let mut stream = stream.context("Failed to connect to guest after multiple retries")?;

    // --- Phase 1: Send to Guest ---
    let chunk = [65u8; 1024]; // 1KB of 'A'
    let mut sent_count = 0;
    while sent_count < DATA_SIZE {
        stream.write_all(&chunk).context("VSOCK-HOST: write failed")?;
        sent_count += chunk.len();
    }

    // wait for ack message from Guest
    let mut ack_buf = [0u8; 8];
    stream.read_exact(&mut ack_buf).context("VSOCK-HOST: failed to read ack")?;
    let ack_len = u64::from_be_bytes(ack_buf);
    assert_eq!(ack_len, sent_count as u64, "VSOCK-HOST: Guest received wrong amount of data!");

    // --- Phase 2: Receive from Guest ---
    let mut received_count = 0;
    let mut buffer = [0u8; 4096];
    while received_count < DATA_SIZE {
        let n = stream.read(&mut buffer).context("VSOCK-HOST: read failed")?;
        assert!(n > 0, "VSOCK-HOST: Host disconnected unexpectedly during Phase 2");
        assert!(buffer[0..n].iter().all(|&x| x == 66u8), "VSOCK-HOST: Host received invalid data during Phase 2");
        received_count += n;
    }
    // Send the received length to Guest for confirmation
    let len_bytes = (received_count as u64).to_be_bytes();
    stream.write_all(&len_bytes).context("VSOCK-HOST: failed to send ack len")?;

    println!("VSOCK-HOST: Test Finished Successfully.");
    Ok(())
}
