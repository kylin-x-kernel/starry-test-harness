# N90-crosvm 快速使用指南

## 🎯 目标

在长城 N90 笔记本上通过 crosvm 运行 StarryOS，测试安全应用。

## 📋 前提条件

1. **硬件**: 长城 N90 笔记本（或支持 KVM 的 x86_64/aarch64 机器）
2. **操作系统**: Linux (Ubuntu 20.04+ / Debian 11+ 推荐)
3. **权限**: sudo 访问权限

## 🚀 三步开始

### 第一步: 环境初始化

```bash
cd /home/yean/code/starry-test-harness
./quickstart-n90.sh setup
```

这会安装：
- crosvm
- 构建工具 (gcc, make, cargo)
- Python3
- 其他依赖

**注意**: 安装后需要重新登录以获得 KVM 权限。

### 第二步: 构建

```bash
# 构建所有组件（RootFS + StarryOS）
./quickstart-n90.sh build-all
```

第一次构建可能需要 30-60 分钟。构建产物：
- RootFS: `../starry-rootfs-buildroot/output/images/n90-crosvm-rootfs.ext4`
- Kernel: `../StarryOS/arceos/starryos.bin`

### 第三步: 运行测试

```bash
# 运行板级测试
./quickstart-n90.sh test

# 或运行安全应用测试
./quickstart-n90.sh security-test
```

## 📖 详细使用

### 交互式运行

```bash
# 启动 StarryOS shell
./quickstart-n90.sh run
```

进入 shell 后可以执行：
```bash
starry:~# ls /opt/security-apps/      # 查看安全应用
starry:~# n90-board-test.sh           # 运行板级测试
starry:~# security-test-suite.sh      # 运行安全测试
starry:~# exit                        # 退出
```

### 手动运行 crosvm

```bash
cd /home/yean/code/starry-test-harness

./scripts/starry_crosvm_runner.py \
  --root /home/yean/code/StarryOS \
  --rootfs /home/yean/code/starry-rootfs-buildroot/output/images/n90-crosvm-rootfs.ext4 \
  --arch aarch64 \
  --cpus 4 \
  --memory 4G \
  --net \
  --boot-timeout 90
```

### 执行特定命令

```bash
./scripts/starry_crosvm_runner.py \
  --root /home/yean/code/StarryOS \
  --rootfs /path/to/rootfs.ext4 \
  --command "uname -a"
```

### 使用 Makefile

```bash
cd /home/yean/code/starry-test-harness

# 设置环境变量
export STARRY_ROOT=/home/yean/code/StarryOS
export ROOTFS_IMAGE=/home/yean/code/starry-rootfs-buildroot/output/images/n90-crosvm-rootfs.ext4

# 运行测试
make board-test-crosvm
make n90-security-test
```

## 🔧 配置

### 修改 CPU 和内存

编辑 `/home/yean/code/starry-rootfs-buildroot/board/n90-crosvm/board.conf`:

```bash
CROSVM_CPUS=8           # 改为 8 核
CROSVM_MEMORY="8G"      # 改为 8G 内存
```

### 修改超时时间

```bash
BOOT_TIMEOUT=120        # 启动超时 120 秒
TEST_TIMEOUT=1800       # 测试超时 30 分钟
```

### 启用/禁用网络

```bash
CROSVM_NET_ENABLE=false  # 禁用网络
```

## 🎯 典型使用场景

### 场景 1: 开发新功能

```bash
# 1. 修改 StarryOS 代码
cd /home/yean/code/StarryOS
# ... 编辑代码 ...

# 2. 重新构建
cd /home/yean/code/starry-test-harness
./quickstart-n90.sh build-starry

# 3. 测试
./quickstart-n90.sh run
```

### 场景 2: 添加安全应用

```bash
# 1. 创建应用脚本
cat > /home/yean/code/starry-rootfs-buildroot/overlay/n90-crosvm/opt/security-apps/my-app.sh <<'EOF'
#!/bin/bash
echo "My Security App"
# 你的逻辑...
EOF

# 2. 设置权限
chmod +x /home/yean/code/starry-rootfs-buildroot/overlay/n90-crosvm/opt/security-apps/my-app.sh

# 3. 重建 rootfs
cd /home/yean/code/starry-rootfs-buildroot
make

# 4. 运行应用
cd /home/yean/code/starry-test-harness
./scripts/starry_crosvm_runner.py \
  --root /home/yean/code/StarryOS \
  --rootfs /home/yean/code/starry-rootfs-buildroot/output/images/n90-crosvm-rootfs.ext4 \
  --command "/opt/security-apps/my-app.sh"
```

### 场景 3: CI/CD 集成

```bash
#!/bin/bash
# ci-test.sh

set -e

cd /home/yean/code/starry-test-harness

# 构建
./quickstart-n90.sh build-all

# 测试
./quickstart-n90.sh test

# 安全测试
./quickstart-n90.sh security-test

echo "All tests passed!"
```

## 🐛 故障排查

### 问题 1: "Permission denied: /dev/kvm"

**解决**:
```bash
# 添加用户到 kvm 组
sudo usermod -a -G kvm $USER

# 重新登录
logout
# 或
newgrp kvm
```

### 问题 2: "crosvm: command not found"

**解决**:
```bash
# Ubuntu/Debian
sudo apt install crosvm

# 或从源码构建
git clone https://chromium.googlesource.com/chromiumos/platform/crosvm
cd crosvm
cargo build --release
sudo cp target/release/crosvm /usr/local/bin/
```

### 问题 3: 启动超时

**解决**:
```bash
# 增加超时时间
./scripts/starry_crosvm_runner.py \
  --boot-timeout 180 \
  ...
```

### 问题 4: 网络不通

**检查 TAP 设备**:
```bash
# 创建 TAP 设备
sudo ip tuntap add dev crosvm-tap mode tap
sudo ip addr add 10.0.2.2/24 dev crosvm-tap
sudo ip link set crosvm-tap up

# 启用转发
sudo sysctl -w net.ipv4.ip_forward=1
sudo iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE
```

## 📚 更多资源

- **完整文档**: `/home/yean/code/starry-rootfs-buildroot/docs/n90-crosvm-guide.md`
- **实现说明**: `/home/yean/code/starry-test-harness/CROSVM_IMPLEMENTATION.md`
- **crosvm 官方**: https://google.github.io/crosvm/

## 💡 提示

1. **首次构建慢**: 第一次构建会下载很多包，请耐心等待
2. **增量构建快**: 后续只构建修改的部分，速度很快
3. **保存日志**: 测试日志在 `logs/` 目录
4. **使用 tmux**: 长时间测试建议在 tmux/screen 中运行

## 🎓 命令速查

```bash
# 快速启动脚本
./quickstart-n90.sh setup          # 初始化
./quickstart-n90.sh build-all      # 全部构建
./quickstart-n90.sh run            # 运行
./quickstart-n90.sh test           # 测试
./quickstart-n90.sh clean          # 清理

# crosvm runner
./scripts/starry_crosvm_runner.py --help

# 测试框架
./scripts/run_board_tests.sh --help

# Makefile
make board-test-crosvm
make n90-security-test
```

## ✅ 检查清单

使用前确保：
- [ ] Linux kernel 5.10+
- [ ] KVM 支持 (`lsmod | grep kvm`)
- [ ] 用户在 kvm 组 (`groups | grep kvm`)
- [ ] crosvm 已安装 (`which crosvm`)
- [ ] 至少 20GB 磁盘空间
- [ ] 至少 4GB RAM

---

**最后更新**: 2025-11-24  
**维护者**: StarryOS Team
