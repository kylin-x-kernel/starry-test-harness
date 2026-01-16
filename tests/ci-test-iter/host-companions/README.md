# Host Companion Programs

## 概述

Host Companion Programs 是运行在宿主机（host）上的辅助程序，用于与 StarryOS 虚拟机（guest）进行通信测试。

这个机制支持需要 **host-guest 双向通信** 的测试场景，例如：
- VSOCK 通信测试
- 网络协议测试
- 其他需要外部刺激的测试

## 架构设计


```
Suite.toml → 包装脚本 → run_case.sh → VM Runner → Host + Guest
             (设置环境变量)   (检测并传参)  (协调执行)   (并行通信)
```

**执行流程**：
1. 测试套件调用包装脚本（如 `run_xxx_case.sh`）
2. 包装脚本构建 host companion，设置环境变量
3. `run_case.sh` 检测环境变量并传递给 VM runner
4. VM runner 启动虚拟机，执行 guest 命令后启动 host companion
5. Host 和 guest 并行通信，完成测试

## 目录结构

```
tests/ci-test-iter/host-companions/
├── README.md              # 本文档
├── build.sh               # 构建所有 companion 程序
└── <your-companion>/      # 你的 companion 程序
    ├── Cargo.toml
    └── src/
        └── main.rs
```

## 添加新的 Companion 程序

### 步骤 1: 创建 Rust 项目

```bash
mkdir -p tests/ci-test-iter/host-companions/<your-companion>
cd tests/ci-test-iter/host-companions/<your-companion>
```

创建 `Cargo.toml`（**必须包含 `[workspace]`**）:
```toml
[package]
name = "your-companion"
version = "0.1.0"
edition = "2021"

# 重要：排除父 workspace，避免冲突
[workspace]

[dependencies]
# 添加你需要的依赖
```

创建 `src/main.rs`:
```rust
fn main() -> anyhow::Result<()> {
    println!("[HOST] Your companion starting...");
    
    // 实现你的逻辑：
    // - 连接到 guest（VSOCK/TCP/etc）
    // - 发送/接收数据
    // - 验证结果
    
    println!("[HOST] Your companion completed");
    Ok(())
}
```

### 步骤 2: 构建

```bash
cd /path/to/starry-test-harness
./tests/ci-test-iter/host-companions/build.sh
# 产物: artifacts/host-companions/<your-companion>
```

### 步骤 3: 创建测试包装脚本

```bash
cat > tests/ci-test-iter/run_<your>_case.sh << 'EOF'
#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE="$(cd "${SCRIPT_DIR}/../.." && pwd)"

BINARY_NAME="$1"
COMPANION_NAME="${2:-your-companion}"

# 构建 companion（如需要）
COMPANION_PATH="${WORKSPACE}/artifacts/host-companions/${COMPANION_NAME}"
if [[ ! -x "${COMPANION_PATH}" ]]; then
  "${WORKSPACE}/tests/ci-test-iter/host-companions/build.sh"
fi

# 设置环境变量
export STARRY_HOST_COMPANION="${COMPANION_PATH}"
export STARRY_COMPANION_DELAY="${STARRY_COMPANION_DELAY:-3}"
export STARRY_COMPANION_TIMEOUT="${STARRY_COMPANION_TIMEOUT:-30}"

# 委托给通用脚本
exec "${SCRIPT_DIR}/run_case.sh" "${BINARY_NAME}"
EOF

chmod +x tests/ci-test-iter/run_<your>_case.sh
```

### 步骤 4: 配置测试套件

在 `tests/ci-test-iter/suite.toml` 中添加：
```toml
[[cases]]
name = "your-test"
description = "测试描述"
path = "tests/ci-test-iter/run_<your>_case.sh"
args = ["test_binary_name", "your-companion"]
```

### 步骤 5: 运行测试

```bash
CASES=your-test make ci-test-iter run
```

## 环境变量配置

| 变量名 | 描述 | 默认值 |
|--------|------|--------|
| `STARRY_HOST_COMPANION` | Host companion 程序的路径 | （无） |
| `STARRY_COMPANION_DELAY` | Guest 启动后延迟启动 companion（秒） | 2 |
| `STARRY_COMPANION_TIMEOUT` | Companion 程序超时时间（秒） | 30 |

## VM Runner 参数

`starry_vm_runner.py` 支持的参数：

| 参数 | 描述 | 默认值 |
|------|------|--------|
| `--host-companion PATH` | Host companion 程序路径 | （无） |
| `--companion-delay SECS` | 延迟时间 | 2 |
| `--companion-timeout SECS` | 超时时间 | 30 |

## 故障排查

### Companion 连接失败

1. **增加延迟时间**：Guest 可能需要更多时间初始化
   ```bash
   export STARRY_COMPANION_DELAY=5
   ```

2. **查看日志**：Companion 的输出会显示在测试日志中
   ```bash
   cat logs/ci-test-iter/<timestamp>/cases/<test-name>.log
   ```

3. **检查设备权限**：确保必要的设备（如 `/dev/vhost-vsock`）有正确权限

### 构建失败

1. **Workspace 冲突**：确保 `Cargo.toml` 中有 `[workspace]` 表
2. **依赖问题**：检查依赖版本兼容性
   ```bash
   cargo tree --manifest-path tests/ci-test-iter/host-companions/<your-companion>/Cargo.toml
   ```

