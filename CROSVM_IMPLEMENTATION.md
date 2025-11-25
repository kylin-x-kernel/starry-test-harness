# crosvm Support for N90 Board - Implementation Summary

## 📋 概述

本次实现为 StarryOS 测试框架添加了完整的 crosvm 支持，专门针对长城 N90 笔记本电脑的板级测试和安全应用运行。

## 🎯 目标

在长城 N90 笔记本电脑上通过 crosvm 虚拟化技术运行 StarryOS，提供：
- 隔离的安全应用运行环境
- 完整的板级测试框架
- 高性能的虚拟化支持

## 📦 新增组件

### 1. crosvm Runner (`scripts/starry_crosvm_runner.py`)

**功能**:
- 替代 `starry_vm_runner.py`，使用 crosvm 而非 QEMU
- 通过 Unix domain socket 连接串口 (vs QEMU 的 TCP socket)
- 支持命令执行和退出码检测
- 配置化的 CPU、内存、网络参数

**特性**:
- ✅ 启动超时控制
- ✅ 命令超时控制
- ✅ 自动重试连接
- ✅ 输出清理和解析
- ✅ VirtIO 设备支持

**使用示例**:
```bash
./scripts/starry_crosvm_runner.py \
  --root /path/to/StarryOS \
  --rootfs /path/to/rootfs.ext4 \
  --arch aarch64 \
  --cpus 4 \
  --memory 4G \
  --net \
  --command "your-test-command"
```

### 2. N90-crosvm 板型配置

#### 配置文件 (`configs/n90-crosvm_defconfig`)
- 基于 aarch64 架构（可调整为 x86_64）
- 包含安全相关软件包（OpenSSL, libsodium, iptables）
- 集成 Python3 用于高级测试脚本
- 包含调试工具（strace, gdb, htop）

#### 板型脚本目录 (`board/n90-crosvm/`)
```
board/n90-crosvm/
├── board.conf          # 板型配置参数
├── post-build.sh       # 构建后处理
└── post-image.sh       # 镜像生成后处理
```

**board.conf 关键配置**:
- Hypervisor: `crosvm`
- CPU: 4 核
- Memory: 4G
- Network: TAP 模式
- Boot timeout: 90 秒
- Test timeout: 900 秒 (15分钟)

### 3. N90 专用 Overlay

#### 目录结构 (`overlay/n90-crosvm/`)
```
overlay/n90-crosvm/
├── usr/bin/
│   └── n90-board-test.sh          # N90 板级测试脚本
└── opt/security-apps/
    └── security-test-suite.sh     # 安全应用测试套件
```

#### N90 板级测试项目
- VirtIO 设备检测
- crosvm Serial 控制台验证
- 内存分配测试
- 网络配置检查
- 安全环境验证
- OpenSSL 可用性测试

#### 安全测试套件
- 加密操作测试 (AES-256, SHA-256)
- 安全内存操作
- 进程隔离验证 (namespace, cgroup)
- 网络安全检查 (iptables)
- 安全文件操作 (权限, 锁定)

### 4. 测试框架集成

#### 更新的测试运行器 (`scripts/run_board_tests.sh`)

新增支持:
- `--hypervisor` 参数选择 QEMU 或 crosvm
- 自动检测板型并加载相应配置
- crosvm 特定的构建流程
- 智能的 hypervisor 路由

**使用示例**:
```bash
# QEMU 测试
./scripts/run_board_tests.sh --board qemu_virt --hypervisor qemu --rootfs rootfs.img

# crosvm 测试 (N90)
./scripts/run_board_tests.sh --board n90-crosvm --hypervisor crosvm --rootfs rootfs.ext4
```

### 5. Makefile 集成

新增 targets:
```makefile
make board-test-qemu     # QEMU 板级测试
make board-test-crosvm   # crosvm 板级测试 (N90)
make n90-security-test   # N90 安全应用测试
```

### 6. 快速启动脚本 (`quickstart-n90.sh`)

一键式操作脚本:
```bash
./quickstart-n90.sh setup          # 初始化环境
./quickstart-n90.sh build-all      # 构建所有组件
./quickstart-n90.sh run            # 运行 StarryOS
./quickstart-n90.sh test           # 运行板级测试
./quickstart-n90.sh security-test  # 运行安全测试
```

### 7. 完整文档 (`docs/n90-crosvm-guide.md`)

包含:
- 架构说明和设计决策
- 快速开始指南
- 配置参数详解
- 安全应用开发指南
- 高级用法（网络、调试、性能优化）
- 故障排查
- CI/CD 集成示例

## 🔧 技术细节

### crosvm vs QEMU 差异

| 特性 | QEMU | crosvm |
|------|------|--------|
| 串口通信 | TCP Socket (port 4444) | Unix Domain Socket |
| 内存安全 | C/C++ | Rust ✓ |
| 攻击面 | 较大 | 最小化 ✓ |
| 沙箱隔离 | 有限 | seccomp + namespace ✓ |
| 性能 | 良好 | 优秀 (KVM) ✓ |

### 关键实现决策

1. **为什么选 crosvm?**
   - Rust 内存安全
   - 更小的 TCB (Trusted Computing Base)
   - Chrome OS 生产级验证
   - 适合安全应用场景

2. **架构选择**
   - 默认 aarch64（匹配 N90 如果是 ARM）
   - 可配置为 x86_64
   - VirtIO 设备全面支持

3. **网络设计**
   - TAP 网络模式
   - DHCP 自动配置
   - NAT 出站连接
   - 隔离的安全网络环境

## 📁 文件清单

### 新增文件

#### starry-test-harness
- `scripts/starry_crosvm_runner.py` - crosvm 运行器 (380+ 行)
- `scripts/run_board_tests.sh` - 测试运行器 (已更新)
- `quickstart-n90.sh` - 快速启动脚本 (300+ 行)
- `Makefile` - 新增 board test targets

#### starry-rootfs-buildroot
- `configs/n90-crosvm_defconfig` - 板型配置
- `board/n90-crosvm/board.conf` - 参数配置
- `board/n90-crosvm/post-build.sh` - 构建后脚本
- `board/n90-crosvm/post-image.sh` - 镜像生成脚本
- `overlay/n90-crosvm/usr/bin/n90-board-test.sh` - 板级测试
- `overlay/n90-crosvm/opt/security-apps/security-test-suite.sh` - 安全测试
- `docs/n90-crosvm-guide.md` - 完整文档 (400+ 行)

### 修改文件
- `starry-test-harness/scripts/run_board_tests.sh` - 添加 crosvm 支持
- `starry-test-harness/Makefile` - 添加新 targets

## 🚀 快速开始

### 1. 环境准备
```bash
cd /home/yean/code/starry-test-harness
./quickstart-n90.sh setup
```

### 2. 构建
```bash
./quickstart-n90.sh build-all
```

### 3. 运行测试
```bash
./quickstart-n90.sh test
```

### 4. 运行安全应用测试
```bash
./quickstart-n90.sh security-test
```

## ✅ 测试验证

### 功能测试清单
- ✅ crosvm runner 脚本语法正确
- ✅ Unix socket 串口通信实现
- ✅ 命令执行和退出码检测
- ✅ 板型配置完整
- ✅ 构建脚本可执行
- ✅ 测试框架集成
- ✅ 安全测试套件实现
- ✅ 文档完整

### 待实际验证项目
- ⏳ 在实际 N90 硬件上运行
- ⏳ crosvm 启动和串口连接
- ⏳ 网络功能验证
- ⏳ 安全应用性能测试
- ⏳ 长时间稳定性测试

## 📊 代码统计

| 组件 | 文件数 | 代码行数 |
|------|--------|----------|
| crosvm runner | 1 | ~380 |
| 板型配置 | 4 | ~200 |
| 测试脚本 | 3 | ~500 |
| 快速启动 | 1 | ~320 |
| 文档 | 1 | ~400 |
| **总计** | **10** | **~1800** |

## 🎓 使用场景

### 场景 1: 开发调试
```bash
# 快速迭代测试
./quickstart-n90.sh build-starry
./quickstart-n90.sh run
```

### 场景 2: CI/CD
```bash
# 自动化测试
./quickstart-n90.sh build-all
./quickstart-n90.sh test
```

### 场景 3: 安全应用开发
```bash
# 部署并测试安全应用
./scripts/starry_crosvm_runner.py \
  --root $STARRY_ROOT \
  --rootfs custom-rootfs.ext4 \
  --command "/opt/security-apps/my-app"
```

### 场景 4: 性能分析
```bash
# 带性能监控运行
./scripts/starry_crosvm_runner.py \
  --root $STARRY_ROOT \
  --rootfs $ROOTFS \
  --cpus 8 \
  --memory 8G \
  --command "perf stat my-benchmark"
```

## 🔐 安全特性

### crosvm 沙箱隔离
- ✅ Linux seccomp 系统调用过滤
- ✅ Namespace 隔离 (PID, NET, MNT)
- ✅ Capability 限制
- ✅ 最小权限原则

### StarryOS 内核安全
- ✅ 隔离的用户空间
- ✅ 内存保护
- ✅ 安全启动支持（可配置）

## 📈 后续改进

### 短期 (1-2 周)
- [ ] 在实际 N90 硬件上验证
- [ ] 性能基准测试
- [ ] 添加更多安全应用示例

### 中期 (1-2 月)
- [ ] GPU 加速支持
- [ ] 多网卡配置
- [ ] 持久化存储方案
- [ ] 远程调试支持

### 长期 (3+ 月)
- [ ] 容器化部署
- [ ] 集群管理
- [ ] 自动化安全扫描
- [ ] 生产环境优化

## 🤝 贡献指南

### 添加新板型
1. 复制 `configs/n90-crosvm_defconfig`
2. 创建 `board/your-board/` 目录和配置
3. 创建对应的 overlay
4. 更新 `run_board_tests.sh`

### 添加安全应用
1. 在 `overlay/n90-crosvm/opt/security-apps/` 创建脚本
2. 添加到 rootfs overlay
3. 在测试套件中引用
4. 更新文档

## 📚 参考资料

- [crosvm 官方文档](https://google.github.io/crosvm/)
- [StarryOS 文档](https://github.com/kylin-x-kernel/StarryOS)
- [VirtIO 规范](https://docs.oasis-open.org/virtio/virtio/v1.1/)
- [N90 crosvm 使用指南](../starry-rootfs-buildroot/docs/n90-crosvm-guide.md)

## 📞 支持

如有问题或建议，请：
- 提交 Issue
- 查看文档 `docs/n90-crosvm-guide.md`
- 运行 `./quickstart-n90.sh help`

---

**实现日期**: 2025-11-24  
**版本**: 1.0.0  
**作者**: StarryOS Team  
**许可证**: 遵循 StarryOS 许可证
