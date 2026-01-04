//! Starry CI 测试用例模板。
//!
//! 提示：
//! - 根据需要从 `test_utils` 引入工具函数，例如：
//!   `use test_utils::{append_bytes, read_bytes, temp_file, write_bytes};`
//! - 使用 `assert!`/`assert_eq!` 等断言表达预期；失败时测试会自动中断并输出原因。

use std::io::{Read, Write};
use std::thread;
use std::time::Duration;
use vsock::{VsockAddr, VsockListener, VsockStream, VMADDR_CID_ANY};

#[test]
fn vsock_recv_smoke() {
    // Vsock 常量定义
    const VMADDR_CID_LOCAL: u32 = 1; // Local loopback (CID 1)
    const TEST_PORT: u32 = 1234;

    println!("VSOCK: Starting vsock_recv_smoke test...");

    // 1. Bind & Listen (接收端)
    // VsockListener::bind 会自动处理 socket 创建、bind 和 listen
    let listener = VsockListener::bind(&VsockAddr::new(VMADDR_CID_ANY, TEST_PORT))
        .expect("bind and listen failed");

    println!("VSOCK: Listening on port {}...", TEST_PORT);

    // 2. 启动 Client 线程 (发送端) - 模拟数据来源
    let client_thread = thread::spawn(move || {
        // 稍作等待确保 Server 已经 Listen
        thread::sleep(Duration::from_millis(100));

        println!("VSOCK: Client connecting to CID:{} Port:{}...", VMADDR_CID_LOCAL, TEST_PORT);
        
        // VsockStream::connect 会自动处理 socket 创建和 connect
        let mut stream = VsockStream::connect(&VsockAddr::new(VMADDR_CID_LOCAL, TEST_PORT))
            .expect("client connect failed");

        // 发送数据
        stream.write_all(b"Hello Starry").expect("client send failed");
        println!("VSOCK: Client data sent");
    });

    // 3. Accept 连接 (验证接收连接能力)
    println!("VSOCK: Waiting for accept...");
    
    // accept 返回 (VsockStream, VsockAddr)
    let (mut stream, client_addr) = listener.accept().expect("accept failed");
    
    println!("VSOCK: Accepted connection from CID:{} Port:{}", client_addr.cid(), client_addr.port());

    // 4. 读取数据 (验证接收数据能力)
    let mut buf = [0u8; 32];
    let n = stream.read(&mut buf).expect("server read failed");
    
    let msg = std::str::from_utf8(&buf[..n]).unwrap();
    println!("VSOCK: Received message: {:?}", msg);
    
    assert_eq!(msg, "Hello Starry", "接收到的数据与发送不一致");

    // 等待发送线程结束
    client_thread.join().expect("client thread panicked");
}

