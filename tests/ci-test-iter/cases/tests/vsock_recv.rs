//! Starry CI 测试用例模板。

use std::io::{Read, Write};
use std::thread;
use std::time::Duration;
use vsock::{VsockAddr, VsockListener, VsockStream, VMADDR_CID_ANY, VMADDR_CID_HOST};

#[test]
fn vsock_recv_smoke() {
    // Vsock 常量定义
    // 注意：在 QEMU 中，Guest CID 通常由启动参数指定（日志里是 103），
    // 但 Loopback 通信通常使用 CID 1 (VMADDR_CID_LOCAL)。
    // 如果 StarryOS 不支持 CID 1，可能需要尝试使用自身的 CID (103)。
    const VMADDR_CID_LOCAL: u32 = 1; 
    const TEST_PORT: u32 = 1234;

    println!("VSOCK: Starting vsock_recv_smoke test...");

    // --- 诊断步骤 1: 尝试 Bind (验证协议栈是否就绪) ---
    println!("VSOCK: [Diag] Attempting to bind to CID_ANY:{}...", TEST_PORT);
    let listener_result = VsockListener::bind(&VsockAddr::new(VMADDR_CID_ANY, TEST_PORT));
    
    match &listener_result {
        Ok(_) => println!("VSOCK: [Diag] Bind successful! Vsock driver seems active."),
        Err(e) => {
            println!("VSOCK: [Diag] Bind failed: {:?}.", e);
            println!("VSOCK: [Diag] WARNING: 'NotFound' usually means AF_VSOCK is not supported or driver is missing.");
        }
    }

    // --- 诊断步骤 2: 尝试 Connect Host (验证是否能通过 PCI 设备通信) ---
    // 即使 Host 没有监听，如果驱动正常，这里应该是 ConnectionRefused 而不是 NotFound
    // println!("VSOCK: [Diag] Attempting to connect to Host (CID:{} Port:{})...", VMADDR_CID_HOST, TEST_PORT);
    // match VsockStream::connect(&VsockAddr::new(VMADDR_CID_HOST, TEST_PORT)) {
    //     Ok(_) => println!("VSOCK: [Diag] Connect to Host successful (Unexpected if Host is not listening)."),
    //     Err(e) => println!("VSOCK: [Diag] Connect to Host result: {:?}", e),
    // }

    // 如果 Bind 失败，后续测试无法进行，直接 panic 暴露问题
    let listener = listener_result.expect("VSOCK Bind failed - cannot proceed with loopback test");

    println!("VSOCK: Listening on port {}...", TEST_PORT);

    // 2. 启动 Client 线程 (发送端)
    let client_thread = thread::spawn(move || {
        thread::sleep(Duration::from_millis(100));
        println!("VSOCK: Client connecting to CID:{} Port:{}...", VMADDR_CID_LOCAL, TEST_PORT);
        
        match VsockStream::connect(&VsockAddr::new(VMADDR_CID_LOCAL, TEST_PORT)) {
            Ok(mut stream) => {
                println!("VSOCK: Client connected!");
                stream.write_all(b"Hello Starry").expect("client send failed");
                let _ = stream.flush();
                println!("VSOCK: Client data sent");
                // 保持连接一会，确保服务端读到数据
                thread::sleep(Duration::from_secs(1));
            },
            Err(e) => {
                println!("VSOCK: Client connect failed: {:?}", e);
                // 如果 CID 1 失败，尝试连接自身 CID (假设是 103，虽然通常不这么用)
                // 或者说明 StarryOS 不支持 Loopback
            }
        }
    });

    // 3. Accept 连接
    println!("VSOCK: Waiting for accept...");
    let (mut stream, client_addr) = listener.accept().expect("accept failed");
    println!("VSOCK: Accepted connection from CID:{} Port:{}", client_addr.cid(), client_addr.port());

    // 4. 读取数据
    let mut buf = [0u8; 32];
    let n = stream.read(&mut buf).expect("server read failed");
    let msg = std::str::from_utf8(&buf[..n]).unwrap();
    println!("VSOCK: Received message len : {n}");
    println!("VSOCK: Received message: {:?}", msg);
    
    assert_eq!(msg, "Hello Starry", "接收到的数据与发送不一致");

    client_thread.join().expect("client thread panicked");
}

