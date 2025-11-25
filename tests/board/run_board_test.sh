#!/bin/bash
# Board test case runner
# 调用 StarryOS 内的 starry-board-test 脚本

set -euo pipefail

TEST_TYPE="${1:-basic}"
STARRY_ROOT="${STARRY_ROOT:-../../StarryOS}"
ARCH="${ARCH:-aarch64}"

# 使用 starry_vm_runner.py 执行测试
RUNNER="../scripts/starry_vm_runner.py"

case "$TEST_TYPE" in
    basic)
        python3 "$RUNNER" \
            --root "$STARRY_ROOT" \
            --arch "$ARCH" \
            --command "starry-board-test" \
            --command-timeout 300
        ;;
    
    hardware)
        # 硬件检查（可以是测试的子集）
        python3 "$RUNNER" \
            --root "$STARRY_ROOT" \
            --arch "$ARCH" \
            --command "cat /proc/cpuinfo && cat /proc/meminfo && df -h" \
            --command-timeout 60
        ;;
    
    *)
        echo "Unknown test type: $TEST_TYPE"
        exit 1
        ;;
esac
