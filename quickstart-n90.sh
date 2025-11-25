#!/bin/bash
# Quick start script for N90-crosvm development
# 一键构建和测试 StarryOS on crosvm for N90

set -e

# 颜色定义
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

info() { echo -e "${GREEN}[INFO]${NC} $*"; }
step() { echo -e "${BLUE}[STEP]${NC} $*"; }
warn() { echo -e "${YELLOW}[WARN]${NC} $*"; }
error() { echo -e "${RED}[ERROR]${NC} $*" >&2; }

# 项目路径
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
TEST_HARNESS_ROOT="$SCRIPT_DIR"
STARRY_ROOT="${STARRY_ROOT:-$TEST_HARNESS_ROOT/../StarryOS}"
ROOTFS_ROOT="${ROOTFS_ROOT:-$TEST_HARNESS_ROOT/../starry-rootfs-buildroot}"

ROOTFS_IMAGE="$ROOTFS_ROOT/output/images/n90-crosvm-rootfs.ext4"

# 命令
CMD="${1:-help}"

usage() {
    cat <<EOF
N90-crosvm 快速启动脚本

用法: $0 <命令> [选项]

命令:
  setup          初始化环境 (安装依赖)
  build-rootfs   构建 RootFS
  build-starry   构建 StarryOS
  build-all      构建所有组件
  run            运行 StarryOS (交互模式)
  test           运行板级测试
  security-test  运行安全应用测试
  clean          清理构建产物
  help           显示此帮助

环境变量:
  STARRY_ROOT    StarryOS 源码路径 (默认: ../StarryOS)
  ROOTFS_ROOT    RootFS 构建路径 (默认: ../starry-rootfs-buildroot)

示例:
  $0 setup              # 安装依赖
  $0 build-all          # 构建所有
  $0 run                # 运行 StarryOS
  $0 test               # 运行测试
  $0 security-test      # 运行安全测试

EOF
}

check_deps() {
    step "检查依赖..."
    
    local missing=()
    
    for cmd in crosvm python3 make cargo; do
        if ! command -v $cmd >/dev/null 2>&1; then
            missing+=($cmd)
        fi
    done
    
    if [ ${#missing[@]} -gt 0 ]; then
        error "缺少依赖: ${missing[*]}"
        return 1
    fi
    
    # 检查 KVM
    if [ ! -e /dev/kvm ]; then
        error "/dev/kvm 不存在，请确保 KVM 已启用"
        return 1
    fi
    
    # 检查 KVM 权限
    if [ ! -r /dev/kvm ] || [ ! -w /dev/kvm ]; then
        warn "/dev/kvm 权限不足"
        info "运行: sudo usermod -a -G kvm \$USER"
        info "然后重新登录"
    fi
    
    info "依赖检查通过 ✓"
}

setup() {
    step "初始化 N90-crosvm 环境..."
    
    info "检测 Linux 发行版..."
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        info "发行版: $NAME $VERSION"
    fi
    
    info "安装构建依赖..."
    if command -v apt >/dev/null 2>&1; then
        sudo apt update
        sudo apt install -y \
            crosvm \
            build-essential \
            git \
            curl \
            python3 \
            python3-pip \
            libssl-dev \
            pkg-config \
            qemu-system-aarch64
    elif command -v dnf >/dev/null 2>&1; then
        sudo dnf install -y \
            crosvm \
            gcc \
            git \
            curl \
            python3 \
            openssl-devel \
            pkg-config
    else
        warn "无法自动安装依赖，请手动安装"
    fi
    
    info "检查 Rust..."
    if ! command -v cargo >/dev/null 2>&1; then
        info "安装 Rust..."
        curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
        source "$HOME/.cargo/env"
    fi
    
    info "配置 KVM 权限..."
    if [ -e /dev/kvm ]; then
        sudo usermod -a -G kvm $USER || true
        info "请重新登录以生效 KVM 权限"
    fi
    
    check_deps
    
    info "环境初始化完成 ✓"
}

build_rootfs() {
    step "构建 N90-crosvm RootFS..."
    
    if [ ! -d "$ROOTFS_ROOT" ]; then
        error "RootFS 源码目录不存在: $ROOTFS_ROOT"
        return 1
    fi
    
    cd "$ROOTFS_ROOT"
    
    info "配置 n90-crosvm..."
    make n90-crosvm_defconfig
    
    info "开始构建 (这可能需要较长时间)..."
    make -j$(nproc)
    
    if [ -f "$ROOTFS_IMAGE" ]; then
        info "RootFS 构建成功 ✓"
        info "位置: $ROOTFS_IMAGE"
        info "大小: $(du -h "$ROOTFS_IMAGE" | cut -f1)"
    else
        error "RootFS 构建失败"
        return 1
    fi
}

build_starry() {
    step "构建 StarryOS for crosvm..."
    
    if [ ! -d "$STARRY_ROOT" ]; then
        error "StarryOS 源码目录不存在: $STARRY_ROOT"
        return 1
    fi
    
    cd "$STARRY_ROOT"
    
    info "构建目标: aarch64-crosvm"
    make ARCH=aarch64 \
         APP_FEATURES=crosvm \
         MYPLAT=axplat-aarch64-crosvm-virt \
         BUS=pci \
         LOG=warn \
         crosvm
    
    if [ -f "arceos/starryos.bin" ]; then
        info "StarryOS 构建成功 ✓"
        info "位置: $STARRY_ROOT/arceos/starryos.bin"
    else
        error "StarryOS 构建失败"
        return 1
    fi
}

run_starry() {
    step "运行 StarryOS on crosvm..."
    
    check_deps
    
    if [ ! -f "$STARRY_ROOT/arceos/starryos.bin" ]; then
        warn "StarryOS 内核不存在，先构建..."
        build_starry
    fi
    
    if [ ! -f "$ROOTFS_IMAGE" ]; then
        warn "RootFS 不存在，先构建..."
        build_rootfs
    fi
    
    cd "$TEST_HARNESS_ROOT"
    
    info "启动 crosvm..."
    info "CPU: 4 核"
    info "内存: 4G"
    info "网络: 启用"
    info ""
    info "按 Ctrl+C 退出"
    info ""
    
    ./scripts/starry_crosvm_runner.py \
        --root "$STARRY_ROOT" \
        --rootfs "$ROOTFS_IMAGE" \
        --arch aarch64 \
        --cpus 4 \
        --memory 4G \
        --net \
        --boot-timeout 90
}

run_test() {
    step "运行 N90-crosvm 板级测试..."
    
    check_deps
    
    if [ ! -f "$ROOTFS_IMAGE" ]; then
        warn "RootFS 不存在，先构建..."
        build_rootfs
    fi
    
    cd "$TEST_HARNESS_ROOT"
    
    ./scripts/run_board_tests.sh \
        --board n90-crosvm \
        --hypervisor crosvm \
        --rootfs "$ROOTFS_IMAGE" \
        --timeout 600
}

run_security_test() {
    step "运行 N90 安全应用测试..."
    
    check_deps
    
    if [ ! -f "$ROOTFS_IMAGE" ]; then
        warn "RootFS 不存在，先构建..."
        build_rootfs
    fi
    
    cd "$TEST_HARNESS_ROOT"
    
    ./scripts/starry_crosvm_runner.py \
        --root "$STARRY_ROOT" \
        --rootfs "$ROOTFS_IMAGE" \
        --arch aarch64 \
        --cpus 4 \
        --memory 4G \
        --net \
        --boot-timeout 90 \
        --command "/opt/security-apps/security-test-suite.sh" \
        --command-timeout 600
}

clean() {
    step "清理构建产物..."
    
    if [ -d "$ROOTFS_ROOT/output" ]; then
        info "清理 RootFS..."
        cd "$ROOTFS_ROOT"
        make clean
    fi
    
    if [ -d "$STARRY_ROOT" ]; then
        info "清理 StarryOS..."
        cd "$STARRY_ROOT"
        make clean
    fi
    
    info "清理完成 ✓"
}

main() {
    echo "=========================================="
    echo "N90-crosvm 快速启动"
    echo "=========================================="
    echo ""
    
    case "$CMD" in
        setup)
            setup
            ;;
        build-rootfs)
            build_rootfs
            ;;
        build-starry)
            build_starry
            ;;
        build-all)
            build_rootfs
            build_starry
            ;;
        run)
            run_starry
            ;;
        test)
            run_test
            ;;
        security-test)
            run_security_test
            ;;
        clean)
            clean
            ;;
        help|--help|-h)
            usage
            ;;
        *)
            error "未知命令: $CMD"
            echo ""
            usage
            exit 1
            ;;
    esac
    
    echo ""
    echo "=========================================="
    info "完成!"
    echo "=========================================="
}

main "$@"
