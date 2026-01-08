//! Starry CI 测试用例模板。

use std::io::{Read};
use vsock::{VsockAddr, VsockListener, VMADDR_CID_ANY};


#[test]
fn vsock_recv_smoke() {
    println!("VSOCK: Starting vsock_recv_smoke test...");
    // 1. 绑定监听地址
    let addr = VsockAddr::new(VMADDR_CID_ANY, 1234);
    let listener = VsockListener::bind(&addr).expect("Failed to bind to vsock");
    // 2. 等待客户端连接
    let (mut stream, client_addr) = listener.accept().expect("accept failed");
    println!("VSOCK: Accepted connection from CID:{} Port:{}", client_addr.cid(), client_addr.port());
    // 3. 读取数据
    let mut buf = [0u8; 32];
    let n = stream.read(&mut buf).expect("server read failed");
    let msg = std::str::from_utf8(&buf[..n]).unwrap();
    println!("VSOCK: Received message len : {n}");
    println!("VSOCK: Received message: {:?}", msg);
    // 4. 验证数据
    assert_eq!(msg, "Hello Starry", "接收到的数据与发送不一致");
}

