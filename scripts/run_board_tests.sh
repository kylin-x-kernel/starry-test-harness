#!/bin/bash
# Board Test Runner for starry-test-harness
# 支持 QEMU 和真实硬件板的基本功能测试

set -euo pipefail

# 默认配置
SUITE="board-basic"
ARCH="aarch64"
BOARD="qemu_virt"
HYPERVISOR="qemu"  # 新增: qemu 或 crosvm
ROOTFS_IMAGE=""
SERIAL_PORT=""
POWER_CONTROLLER=""
NET_TARGET=""
TEST_TIMEOUT=300

# 颜色
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

log_info() {
    echo -e "${GREEN}[INFO]${NC} $*"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $*" >&2
}

log_warn() {
    echo -e "${YELLOW}[WARN]${NC} $*"
}

usage() {
    cat <<EOF
Usage: $0 [OPTIONS]

运行板级基本功能测试

OPTIONS:
  --suite SUITE             测试套件 (board-basic|board-extended，默认: board-basic)
  --arch ARCH               架构 (aarch64|riscv64|x86_64，默认: aarch64)
  --board BOARD             板级 (qemu_virt|n90-crosvm|真实板子名称，默认: qemu_virt)
  --hypervisor HV           虚拟化方案 (qemu|crosvm，默认: qemu)
  --rootfs IMAGE            RootFS 镜像路径 (必需)
  --serial PORT             串口设备 (真实硬件需要，如 /dev/ttyUSB0)
  --power-controller URL    电源控制器 (真实硬件可选，如 ipmi://...)
  --net-target IP           网络测试目标 (可选，如 192.168.1.100)
  --timeout SECONDS         测试超时时间 (默认: 300)
  --help                    显示帮助

EXAMPLES:
  # QEMU 测试
  $0 --board qemu_virt --rootfs path/to/rootfs.img

  # crosvm 测试 (N90 板)
  $0 --board n90-crosvm --hypervisor crosvm --rootfs path/to/rootfs.ext4

  # 真实硬件测试
  $0 --board my_board --rootfs path/to/rootfs.img \\
     --serial /dev/ttyUSB0 --power-controller ipmi://192.168.1.10

EOF
}

# 解析参数
parse_args() {
    while [[ $# -gt 0 ]]; do
        case $1 in
            --suite)
                SUITE="$2"
                shift 2
                ;;
            --arch)
                ARCH="$2"
                shift 2
                ;;
            --board)
                BOARD="$2"
                shift 2
                ;;
            --hypervisor)
                HYPERVISOR="$2"
                shift 2
                ;;
            --rootfs)
                ROOTFS_IMAGE="$2"
                shift 2
                ;;
            --serial)
                SERIAL_PORT="$2"
                shift 2
                ;;
            --power-controller)
                POWER_CONTROLLER="$2"
                shift 2
                ;;
            --net-target)
                NET_TARGET="$2"
                shift 2
                ;;
            --timeout)
                TEST_TIMEOUT="$2"
                shift 2
                ;;
            --help)
                usage
                exit 0
                ;;
            *)
                log_error "未知参数: $1"
                usage
                exit 1
                ;;
        esac
    done
}

# 验证配置
validate_config() {
    log_info "验证配置..."

    if [[ -z "$ROOTFS_IMAGE" ]]; then
        log_error "必须指定 rootfs 镜像路径 (--rootfs)"
        exit 1
    fi

    if [[ ! -f "$ROOTFS_IMAGE" ]]; then
        log_error "RootFS 镜像不存在: $ROOTFS_IMAGE"
        exit 1
    fi

    # 对于真实硬件，检查串口
    if [[ "$BOARD" != "qemu_virt" ]] && [[ -z "$SERIAL_PORT" ]]; then
        log_warn "真实硬件测试建议指定串口 (--serial)"
    fi

    log_info "配置验证通过"
    log_info "  Board: $BOARD"
    log_info "  Arch: $ARCH"
    log_info "  RootFS: $ROOTFS_IMAGE"
}

# QEMU 板测试
run_qemu_board_test() {
    log_info "在 QEMU 中运行板级测试..."

    local starry_root="${STARRY_ROOT:-../StarryOS}"
    
    if [[ ! -d "$starry_root" ]]; then
        log_error "StarryOS 目录不存在: $starry_root"
        log_error "请设置 STARRY_ROOT 环境变量"
        exit 1
    fi

    # 使用现有的 starry_vm_runner.py
    local runner="scripts/starry_vm_runner.py"
    
    if [[ ! -f "$runner" ]]; then
        log_error "找不到 VM runner: $runner"
        exit 1
    fi

    log_info "启动 StarryOS 并执行板级测试..."
    
    # 执行板级测试入口脚本
    if ! python3 "$runner" \
        --root "$starry_root" \
        --arch "$ARCH" \
        --command "starry-board-test" \
        --command-timeout "$TEST_TIMEOUT"; then
        log_error "板级测试失败"
        return 1
    fi

    log_info "板级测试通过"
    return 0
}

# crosvm 板测试
run_crosvm_board_test() {
    log_info "在 crosvm 中运行板级测试..."

    local starry_root="${STARRY_ROOT:-../StarryOS}"
    
    if [[ ! -d "$starry_root" ]]; then
        log_error "StarryOS 目录不存在: $starry_root"
        log_error "请设置 STARRY_ROOT 环境变量"
        exit 1
    fi

    # 使用 crosvm runner
    local runner="scripts/starry_crosvm_runner.py"
    
    if [[ ! -f "$runner" ]]; then
        log_error "找不到 crosvm runner: $runner"
        exit 1
    fi

    log_info "构建 StarryOS for crosvm..."
    pushd "$starry_root" > /dev/null
    if ! make ARCH="$ARCH" APP_FEATURES=crosvm MYPLAT=axplat-"$ARCH"-crosvm-virt BUS=pci LOG=warn crosvm; then
        log_error "StarryOS 构建失败"
        popd > /dev/null
        return 1
    fi
    popd > /dev/null

    log_info "启动 StarryOS on crosvm 并执行板级测试..."
    
    # 确定测试脚本
    local test_cmd="starry-board-test"
    if [[ "$BOARD" == "n90-crosvm" ]]; then
        test_cmd="n90-board-test.sh"
    fi
    
    # 执行板级测试
    if ! python3 "$runner" \
        --root "$starry_root" \
        --rootfs "$ROOTFS_IMAGE" \
        --arch "$ARCH" \
        --cpus 4 \
        --memory 4G \
        --net \
        --boot-timeout 90 \
        --command "$test_cmd" \
        --command-timeout "$TEST_TIMEOUT"; then
        log_error "板级测试失败"
        return 1
    fi

    log_info "板级测试通过"
    return 0
}

# 真实硬件板测试
run_real_board_test() {
    log_info "在真实硬件板上运行测试..."
    log_info "  Board: $BOARD"
    log_info "  Serial: ${SERIAL_PORT:-N/A}"

    # 电源控制（如果提供）
    if [[ -n "$POWER_CONTROLLER" ]]; then
        log_info "通过电源控制器重启板子..."
        # TODO: 实现电源控制逻辑
        log_warn "电源控制功能待实现"
    fi

    # 串口连接
    if [[ -n "$SERIAL_PORT" ]]; then
        if [[ ! -c "$SERIAL_PORT" ]]; then
            log_error "串口设备不存在: $SERIAL_PORT"
            exit 1
        fi

        log_info "通过串口连接板子: $SERIAL_PORT"
        
        # 使用 expect 或 pyserial 进行串口交互
        # TODO: 实现串口测试脚本
        log_warn "串口测试功能待实现"
        log_info "建议手动连接串口并运行: starry-board-test"
        
        return 0
    fi

    log_warn "真实硬件测试需要手动验证"
    log_info "请在板子上手动运行: starry-board-test"
    
    return 0
}

# 主函数
main() {
    log_info "Starry Board Test Runner"
    log_info "========================"

    parse_args "$@"
    validate_config

    # 根据 hypervisor 选择测试方式
    case "$HYPERVISOR" in
        qemu)
            run_qemu_board_test
            ;;
        crosvm)
            run_crosvm_board_test
            ;;
        *)
            # 真实硬件或其他情况
            if [[ "$BOARD" == "qemu_virt" ]]; then
                run_qemu_board_test
            else
                run_real_board_test
            fi
            ;;
    esac

    log_info "========================"
    log_info "板级测试完成"
}

main "$@"
