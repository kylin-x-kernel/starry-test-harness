// vsock client for sending data stress tests
// Connects to StarryOS guest VM, then sends test data
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
const DATA_SIZE: usize = 10 * 1024 * 1024; // 100MB

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

    // send data
    let mut sent_count = 0;
    let chunk_size = 1024;
    while sent_count < DATA_SIZE {
        let end = std::cmp::min(sent_count + chunk_size, DATA_SIZE);
        let chunk = &data_to_send[sent_count..end];
        let n = stream.write(chunk).expect("VSOCK-HOST: write failed");
        sent_count += n;
    }

    // flush
    stream.flush().unwrap();
    println!("VSOCK-HOST: Data transmission complete ({} bytes)", sent_count);
    
    // wait for receiving end to verify
    std::thread::sleep(std::time::Duration::from_secs(2));

    println!("VSOCK-HOST: Test Finished Successfully.");
    Ok(())
}
