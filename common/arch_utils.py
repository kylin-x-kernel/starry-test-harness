#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0

import os
import subprocess
from typing import Optional


def get_arch() -> str:
    """Get target architecture from environment."""
    return os.environ.get("ARCH") or os.environ.get("arch") or "aarch64"


def get_target_triple(arch: Optional[str] = None) -> str:
    """Get Rust target triple for musl."""
    if arch is None:
        arch = get_arch()
    
    mapping = {
        "aarch64": "aarch64-unknown-linux-musl",
        "x86_64": "x86_64-unknown-linux-musl",
        "riscv64": "riscv64gc-unknown-linux-musl",
        "loongarch64": "loongarch64-unknown-linux-musl",
    }
    return mapping.get(arch, f"{arch}-unknown-linux-musl")


def get_kernel_target(arch: Optional[str] = None) -> str:
    """Get Rust target triple for kernel (no_std)."""
    if arch is None:
        arch = get_arch()
    
    mapping = {
        "x86_64": "x86_64-unknown-none",
        "aarch64": "aarch64-unknown-none-softfloat",
        "riscv64": "riscv64gc-unknown-none-elf",
        "loongarch64": "loongarch64-unknown-none-softfloat",
    }
    return mapping.get(arch, f"{arch}-unknown-none")


def get_musl_linker(arch: Optional[str] = None) -> str:
    """Get musl GCC linker name."""
    if arch is None:
        arch = get_arch()
    
    mapping = {
        "aarch64": "aarch64-linux-musl-gcc",
        "x86_64": "x86_64-linux-musl-gcc",
        "riscv64": "riscv64-linux-musl-gcc",
        "loongarch64": "loongarch64-linux-musl-gcc",
    }
    return mapping.get(arch, f"{arch}-linux-musl-gcc")


def check_musl_linker(arch: Optional[str] = None) -> bool:
    """Check and configure musl linker. Returns True if available."""
    if arch is None:
        arch = get_arch()
    
    target_triple = get_target_triple(arch)
    required_linker = get_musl_linker(arch)
    
    upper_arch = arch.upper().replace("-", "_")
    linker_var = f"CARGO_TARGET_{upper_arch}_UNKNOWN_LINUX_MUSL_LINKER"
    cc_var = f"CC_{arch.replace('-', '_')}_unknown_linux_musl"
    
    linker_env = os.environ.get(linker_var, "")
    if linker_env:
        linker_bin = linker_env.split()[0]
        if not _command_exists(linker_bin):
            print(f"错误: {linker_var}={linker_env} 但未找到可执行文件", file=sys.stderr)
            return False
        return True
    
    cc_env = os.environ.get(cc_var, "")
    if cc_env:
        if not _command_exists(cc_env):
            print(f"错误: {cc_var}={cc_env} 但未找到可执行文件", file=sys.stderr)
            return False
        os.environ[linker_var] = cc_env
        return True
    
    if _command_exists(required_linker):
        os.environ[linker_var] = required_linker
        return True
    
    if arch == "x86_64" and _command_exists("musl-gcc"):
        os.environ[linker_var] = "musl-gcc"
        return True
    
    print(f"未检测到 {arch} musl 交叉编译器。", file=sys.stderr)
    print(f"请安装 {required_linker} 或设置 {linker_var}/{cc_var} 后重试。", file=sys.stderr)
    return False


def get_libc_test_dir(workspace: str, arch: Optional[str] = None) -> str:
    """Get libc-test directory for architecture."""
    if arch is None:
        arch = get_arch()
    
    mapping = {
        "x86_64": f"{workspace}/tests/ci/cases/libc-test-x86",
        "aarch64": f"{workspace}/tests/ci/cases/libc-test-aarch64",
    }
    return mapping.get(arch, f"{workspace}/tests/ci/cases/libc-test-{arch}")


def _command_exists(cmd: str) -> bool:
    """Check if command exists in PATH."""
    try:
        subprocess.run(
            ["command", "-v", cmd],
            check=True,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL,
            shell=False
        )
        return True
    except (subprocess.CalledProcessError, FileNotFoundError):
        return False


if __name__ == "__main__":
    import sys
    print(f"Architecture: {get_arch()}")
    print(f"Target Triple: {get_target_triple()}")
    print(f"Kernel Target: {get_kernel_target()}")
    print(f"Musl Linker: {get_musl_linker()}")
    print(f"Linker Available: {check_musl_linker()}")
