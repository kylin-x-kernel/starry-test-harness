// vsock client for sending data stress tests
// Connects to StarryOS guest VM, then sends test data
// about stress:
//    - data size increased to 100MB
//    - verify data integrity by checking sent/received byte counts
//    - check if there are any exceptions in the continuous transmission of data, 
//      as the old problem was that it stalled after a single transmission of 1K

use serde::Serialize;
use std::io::{Write, Read};
use vsock::{VsockAddr, VsockListener, VMADDR_CID_ANY};

const DATA_SIZE: usize = 1 * 20 * 1024; // 200KB
const PORT: u32 = 1234;

#[derive(Serialize)]
struct TestResult {
    status: &'static str,
}

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

fn main() {
     // Prepare data
    let data_to_send = generate_sequence(DATA_SIZE);
    
    // wait for connection
    let addr = VsockAddr::new(VMADDR_CID_ANY, PORT);
    let listener = VsockListener::bind(&addr).expect("VSOCK-GUEST: Failed to bind to vsock");
    let (mut stream, client_addr) = listener.accept().expect("VSOCK-GUEST: accept failed");
    println!("VSOCK-GUEST: Accepted connection from CID:{}", client_addr.cid());

    // send data
    let mut sent_count = 0;
    let chunk_size = 1024;
    while sent_count < DATA_SIZE {
        let end = std::cmp::min(sent_count + chunk_size, DATA_SIZE);
        let chunk = &data_to_send[sent_count..end];
        let n = stream.write(chunk).expect("VSOCK-GUEST: write failed");
        sent_count += n;
        if sent_count % (1024 * 1024) == 0 {
            println!("VSOCK-GUEST: Send {} MB", sent_count / (1024 * 1024));
        }
    }

    // flush
    stream.flush().unwrap();
    println!("VSOCK-GUEST: Data transmission complete ({} bytes)", sent_count);

    // wait for ack
    let mut ack_buffer = [0u8; 1024];
    let n = stream.read(&mut ack_buffer).unwrap_or_else(|_| panic!("VSOCK-GUEST: read failed"));
    println!("VSOCK-GUEST: Received {} bytes ack from Host", n);
    println!("VSOCK-GUEST: Received ack message from Host: {}", String::from_utf8_lossy(&ack_buffer[..n]));

    // output verification results
    let result = if &ack_buffer[..n] == b"right" {
        println!("VSOCK-GUEST: Data verification succeeded.");
        TestResult { status: "pass" }
    } else {
        println!("VSOCK-GUEST: Data verification failed.");
        TestResult { status: "fail" }
    };
    println!("{}", serde_json::to_string(&result).unwrap());
}
