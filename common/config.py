#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0

import os
from pathlib import Path
from typing import Dict, List, Optional
try:
    import tomllib
except ImportError:
    import tomli as tomllib


class Config:
    """Centralized configuration for test harness."""
    
    DEFAULTS = {
        "paths": {
            "xkernel_root": ".cache/X-Kernel",
            "rootfs_cache": ".cache/rootfs",
            "artifacts_base": "artifacts",
        },
        "build": {
            "default_arch": "aarch64",
            "supported_archs": ["aarch64", "x86_64", "riscv64", "loongarch64"],
            "rootfs_version": "20250917",
        },
        "vm": {
            "default_smp": 4,
            "boot_timeout": 60,
            "command_timeout": 600,
        },
        "targets": {
            "aarch64": "aarch64-unknown-linux-musl",
            "x86_64": "x86_64-unknown-linux-musl",
            "riscv64": "riscv64gc-unknown-linux-musl",
            "loongarch64": "loongarch64-unknown-linux-musl",
        },
        "kernel_targets": {
            "aarch64": "aarch64-unknown-none-softfloat",
            "x86_64": "x86_64-unknown-none",
            "riscv64": "riscv64gc-unknown-none-elf",
            "loongarch64": "loongarch64-unknown-none-softfloat",
        },
    }
    
    def __init__(self, config_file: Optional[str] = None):
        self._config = self.DEFAULTS.copy()
        
        if config_file and Path(config_file).exists():
            with open(config_file, "rb") as f:
                user_config = tomllib.load(f)
                self._merge_config(user_config)
    
    def _merge_config(self, user_config: dict):
        """Deep merge user config into defaults."""
        for key, value in user_config.items():
            if key in self._config and isinstance(self._config[key], dict) and isinstance(value, dict):
                self._config[key].update(value)
            else:
                self._config[key] = value
    
    @property
    def xkernel_root(self) -> str:
        """Get X-Kernel root path from env or config."""
        return os.environ.get("XKERNEL_ROOT") or self._config["paths"]["xkernel_root"]
    
    @property
    def rootfs_cache(self) -> str:
        """Get rootfs cache directory."""
        return self._config["paths"]["rootfs_cache"]
    
    @property
    def artifacts_base(self) -> str:
        """Get artifacts base directory."""
        return self._config["paths"]["artifacts_base"]
    
    @property
    def default_arch(self) -> str:
        """Get default architecture."""
        return os.environ.get("ARCH") or self._config["build"]["default_arch"]
    
    @property
    def supported_archs(self) -> List[str]:
        """Get list of supported architectures."""
        return self._config["build"]["supported_archs"]
    
    @property
    def rootfs_version(self) -> str:
        """Get rootfs version."""
        return os.environ.get("ROOTFS_VERSION") or self._config["build"]["rootfs_version"]
    
    @property
    def default_smp(self) -> int:
        """Get default SMP cores."""
        return int(os.environ.get("SMP") or self._config["vm"]["default_smp"])
    
    @property
    def boot_timeout(self) -> int:
        """Get VM boot timeout in seconds."""
        return self._config["vm"]["boot_timeout"]
    
    @property
    def command_timeout(self) -> int:
        """Get command execution timeout in seconds."""
        return self._config["vm"]["command_timeout"]
    
    def get_target_triple(self, arch: str) -> str:
        """Get Rust target triple for architecture."""
        return self._config["targets"].get(arch, f"{arch}-unknown-linux-musl")
    
    def get_kernel_target(self, arch: str) -> str:
        """Get kernel target triple for architecture."""
        return self._config["kernel_targets"].get(arch, f"{arch}-unknown-none")
    
    def get(self, key: str, default=None):
        """Get config value by key path (e.g., 'vm.boot_timeout')."""
        keys = key.split(".")
        value = self._config
        for k in keys:
            if isinstance(value, dict):
                value = value.get(k)
            else:
                return default
        return value if value is not None else default


_global_config: Optional[Config] = None


def get_config(config_file: Optional[str] = None) -> Config:
    """Get global config instance."""
    global _global_config
    if _global_config is None:
        _global_config = Config(config_file)
    return _global_config


if __name__ == "__main__":
    config = get_config()
    print(f"X-Kernel Root: {config.xkernel_root}")
    print(f"Default Arch: {config.default_arch}")
    print(f"Supported Archs: {config.supported_archs}")
    print(f"Default SMP: {config.default_smp}")
    print(f"Target Triple (x86_64): {config.get_target_triple('x86_64')}")
    print(f"Kernel Target (aarch64): {config.get_kernel_target('aarch64')}")
