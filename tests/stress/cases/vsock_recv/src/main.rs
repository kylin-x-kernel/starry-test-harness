use serde::Serialize;
use std::io::{Write, Read};
use vsock::{VsockAddr, VsockListener, VMADDR_CID_ANY};

const DATA_SIZE: usize = 10 * 1024 * 1024; // 100MB
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
    
    // keep receiving data
    let mut received_data = Vec::with_capacity(DATA_SIZE);
    let mut buffer = vec![0u8; 1024];
    let mut received_count = 0;
    while received_count < DATA_SIZE {
        let n = stream.read(&mut buffer).unwrap_or_else(|_| panic!("VSOCK-GUEST: read failed"));
        assert!(n > 0, "VSOCK-GUEST: GUEST disconnected unexpectedly during receiving");
        received_data.extend_from_slice(&buffer[..n]);
        received_count += n;
        if received_count % (1024 * 1024) == 0 {
            println!("VSOCK-GUEST: Recv {} MB", received_count / (1024 * 1024));
        }
    }
    
    // Data reception completed, verification begins
    assert!(received_count == DATA_SIZE, "VSOCK-GUEST: Data size mismatch! Expected: {} bytes, Received: {} bytes", DATA_SIZE, received_count);

    // Time series verification
    let mut errors = 0;
    for i in 0..DATA_SIZE {
        if received_data[i] != data_to_send[i] {
            errors += 1;
        }
    }
    
    // output verification results
    let result = if errors == 0 {
        TestResult { status: "pass" }
    } else {
        TestResult { status: "fail" }
    };
    println!("{}", serde_json::to_string(&result).unwrap());
}