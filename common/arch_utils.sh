#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

get_arch() {
    echo "${ARCH:-${arch:-aarch64}}"
}

get_target_triple() {
    local arch="${1:-$(get_arch)}"
    case "${arch}" in
        aarch64) echo "aarch64-unknown-linux-musl" ;;
        x86_64) echo "x86_64-unknown-linux-musl" ;;
        riscv64) echo "riscv64gc-unknown-linux-musl" ;;
        loongarch64) echo "loongarch64-unknown-linux-musl" ;;
        *) echo "${arch}-unknown-linux-musl" ;;
    esac
}

get_kernel_target() {
    local arch="${1:-$(get_arch)}"
    case "${arch}" in
        x86_64) echo "x86_64-unknown-none" ;;
        aarch64) echo "aarch64-unknown-none-softfloat" ;;
        riscv64) echo "riscv64gc-unknown-none-elf" ;;
        loongarch64) echo "loongarch64-unknown-none-softfloat" ;;
        *) echo "${arch}-unknown-none" ;;
    esac
}

get_musl_linker() {
    local arch="${1:-$(get_arch)}"
    case "${arch}" in
        aarch64) echo "aarch64-linux-musl-gcc" ;;
        x86_64) echo "x86_64-linux-musl-gcc" ;;
        riscv64) echo "riscv64-linux-musl-gcc" ;;
        loongarch64) echo "loongarch64-linux-musl-gcc" ;;
        *) echo "${arch}-linux-musl-gcc" ;;
    esac
}

check_musl_linker() {
    local arch="${1:-$(get_arch)}"
    local target_triple="$(get_target_triple "${arch}")"
    local required_linker="$(get_musl_linker "${arch}")"
    local upper_arch="$(echo "${arch}" | tr '[:lower:]' '[:upper:]' | tr '-' '_')"
    local linker_var="CARGO_TARGET_${upper_arch}_UNKNOWN_LINUX_MUSL_LINKER"
    local cc_var="CC_${arch//-/_}_unknown_linux_musl"
    
    local linker_env="${!linker_var:-}"
    if [[ -n "${linker_env}" ]]; then
        local linker_bin="${linker_env%% *}"
        if ! command -v "${linker_bin}" >/dev/null 2>&1; then
            echo "错误: ${linker_var}=${linker_env} 但未找到可执行文件" >&2
            return 1
        fi
        return 0
    fi
    
    local cc_env="${!cc_var:-}"
    if [[ -n "${cc_env}" ]]; then
        if ! command -v "${cc_env}" >/dev/null 2>&1; then
            echo "错误: ${cc_var}=${cc_env} 但未找到可执行文件" >&2
            return 1
        fi
        export "${linker_var}=${cc_env}"
        return 0
    fi
    
    if command -v "${required_linker}" >/dev/null 2>&1; then
        export "${linker_var}=${required_linker}"
        return 0
    fi
    
    if [[ "${arch}" == "x86_64" ]] && command -v "musl-gcc" >/dev/null 2>&1; then
        export "${linker_var}=musl-gcc"
        return 0
    fi
    
    cat >&2 <<MSG
未检测到 ${arch} musl 交叉编译器。
请安装 ${required_linker} 或设置 ${linker_var}/${cc_var} 后重试。
MSG
    return 1
}

get_libc_test_dir() {
    local workspace="$1"
    local arch="${2:-$(get_arch)}"
    case "${arch}" in
        x86_64) echo "${workspace}/tests/ci/cases/libc-test-x86" ;;
        aarch64) echo "${workspace}/tests/ci/cases/libc-test-aarch64" ;;
        *) echo "${workspace}/tests/ci/cases/libc-test-${arch}" ;;
    esac
}
