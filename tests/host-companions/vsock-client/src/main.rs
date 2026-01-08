// VSOCK Client for Host-side Testing
// Connects to StarryOS guest VM and sends test data

use anyhow::{Context, Result};
use std::io::Write;
use std::time::Duration;
use vsock::{VsockAddr, VsockStream};

const GUEST_CID: u32 = 103; // QEMU guest CID configured in starry_vm_runner.py
const GUEST_PORT: u32 = 1234; // Port where guest test is listening
const MAX_RETRIES: u32 = 30; // Maximum connection retries
const RETRY_DELAY_MS: u64 = 1000; // Delay between retries (1 second)

fn main() -> Result<()> {
    println!("[HOST] VSOCK Client starting...");
    println!("[HOST] Target: CID={}, Port={}", GUEST_CID, GUEST_PORT);
    
    // Create VSOCK address
    let addr = VsockAddr::new(GUEST_CID, GUEST_PORT);
    
    // Try to connect with retries (guest may not be ready immediately)
    let mut stream = None;
    for attempt in 1..=MAX_RETRIES {
        println!("[HOST] Connection attempt {}/{}", attempt, MAX_RETRIES);
        match VsockStream::connect(&addr) {
            Ok(s) => {
                stream = Some(s);
                println!("[HOST] ✓ Connected to guest successfully");
                break;
            }
            Err(e) => {
                if attempt < MAX_RETRIES {
                    eprintln!("[HOST] Connection failed: {}, retrying in {}ms...", e, RETRY_DELAY_MS);
                    std::thread::sleep(Duration::from_millis(RETRY_DELAY_MS));
                } else {
                    anyhow::bail!("Failed to connect after {} attempts: {}", MAX_RETRIES, e);
                }
            }
        }
    }
    
    let mut stream = stream.context("No connection established")?;
    
    // Send test message
    let message = b"Hello Starry";
    println!("[HOST] Sending message: {:?}", std::str::from_utf8(message)?);
    stream.write_all(message)
        .context("Failed to send message")?;
    stream.flush()
        .context("Failed to flush stream")?;
    
    println!("[HOST] ✓ Message sent successfully");
    println!("[HOST] Client exiting");
    
    Ok(())
}

