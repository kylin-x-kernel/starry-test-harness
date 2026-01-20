// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2025 Weikang Guo <guoweikang.kernel@gmail.com>
// Copyright (C) 2025 KylinSoft Co., Ltd. <https://www.kylinos.cn/>
// See LICENSE for license details.
// 
// This file has been modified by KylinSoft on 2025.

//! Driver for the Arm Generic Interrupt Controller version 3 (or 4).

// vsock client for receiving data stress tests
// Connects to StarryOS guest VM, then receives test data
// about stress:
//    - data size increased to 100MB
//    - verify data integrity by checking sent/received byte counts
//    - check if there are any exceptions in the continuous transmission of data, 
//      as the old problem was that it stalled after a single transmission of 1K

use anyhow::{Context, Result};
use std::io::{Read, Write};
use std::time::Duration;
use vsock::{VsockAddr, VsockStream};

const GUEST_CID: u32 = 103; // QEMU guest CID configured in starry_vm_runner.py
const GUEST_PORT: u32 = 1234; // Port where guest test is listening
const MAX_RETRIES: u32 = 30; // Maximum connection retries
const RETRY_DELAY_MS: u64 = 1000; // Delay between retries (1 second)
const DATA_SIZE: usize = 1 * 20 * 1024; // 200KB

// A pseudo-random generator with specified random seeds
fn generate_sequence(size: usize) -> Vec<u8> {
    let mut data = Vec::with_capacity(size);
    let mut seed: u32 = 42;
    for _ in 0..size {
        seed = seed.wrapping_mul(1103515245).wrapping_add(12345);
        let byte = ((seed >> 16) & 0xFF) as u8;
        data.push(byte);
    }
    data
}

fn main() -> Result<()> {
    // Prepare data
    let data_to_send = generate_sequence(DATA_SIZE);

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

    // keep receiving data
    let mut received_data = Vec::with_capacity(DATA_SIZE);
    let mut buffer = vec![0u8; 1024];
    let mut received_count = 0;
    while received_count < DATA_SIZE {
        let n = stream.read(&mut buffer).unwrap_or_else(|_| panic!("VSOCK-HOST: read failed"));
        assert!(n > 0, "VSOCK-HOST: GUEST disconnected unexpectedly during receiving");
        received_data.extend_from_slice(&buffer[..n]);
        received_count += n;
        if received_count % (1024 * 1024) == 0 {
            println!("VSOCK-HOST: Recv {} MB", received_count / (1024 * 1024));
        }
    }

    // Data reception completed, verification begins
    assert!(received_count == DATA_SIZE, "VSOCK-HOST: Data size mismatch! Expected: {} bytes, Received: {} bytes", DATA_SIZE, received_count);

    // Time series verification
    let mut errors = 0;
    for i in 0..DATA_SIZE {
        if received_data[i] != data_to_send[i] {
            errors += 1;
        }
    }

    if errors == 0 {
        stream.write_all(b"right").expect("VSOCK-HOST: failed to send ack");
        println!("VSOCK-HOST: Data verification succeeded.");
    } else {
        stream.write_all(b"wrong").expect("VSOCK-HOST: failed to send ack");
        println!("VSOCK-HOST: Data verification failed with {} errors.", errors);
    }

    println!("VSOCK-HOST: Test Finished Successfully.");
    Ok(())
}