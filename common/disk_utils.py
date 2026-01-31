#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0

import os
import subprocess
import sys
from pathlib import Path
from typing import Optional


def prepare_disk_from_template(
    template: str,
    target: str,
    label: str = "disk"
) -> bool:
    """Copy rootfs template to target disk image."""
    template_path = Path(template)
    target_path = Path(target)
    
    if not template_path.exists():
        print(f"[{label}] rootfs template not found: {template}", file=sys.stderr)
        return False
    
    print(f"[{label}] creating fresh disk image from template", file=sys.stderr)
    target_path.parent.mkdir(parents=True, exist_ok=True)
    
    try:
        subprocess.run(["cp", str(template_path), str(target_path)], check=True)
    except subprocess.CalledProcessError:
        try:
            subprocess.run(["sudo", "cp", str(template_path), str(target_path)], check=True)
        except subprocess.CalledProcessError:
            print(f"[{label}] failed to copy rootfs template", file=sys.stderr)
            return False
    
    try:
        os.chmod(target_path, 0o666)
    except PermissionError:
        try:
            subprocess.run(["sudo", "chmod", "666", str(target_path)], check=True)
        except subprocess.CalledProcessError:
            print(f"[{label}] failed to adjust permissions", file=sys.stderr)
            return False
    
    return True


def inject_binary_to_disk(
    binary: str,
    dest_path: str,
    disk_image: str,
    label: str = "disk"
) -> bool:
    """Inject binary into disk image using debugfs."""
    binary_path = Path(binary)
    disk_path = Path(disk_image)
    
    if not binary_path.exists():
        print(f"[{label}] binary not found: {binary}", file=sys.stderr)
        return False
    
    if not disk_path.exists():
        print(f"[{label}] disk image not found: {disk_image}", file=sys.stderr)
        return False
    
    debugfs_cmd = ["debugfs"] if disk_path.stat().st_mode & 0o200 else ["sudo", "debugfs"]
    
    dest_dir = os.path.dirname(dest_path)
    dest_filename = os.path.basename(dest_path)
    
    dest_segments = [s for s in dest_dir.split('/') if s]
    current = ""
    for segment in dest_segments:
        current += f"/{segment}"
        subprocess.run(
            debugfs_cmd + ["-w", str(disk_path), "-R", f"mkdir {current}"],
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL
        )
    
    debugfs_commands = f"""cd {dest_dir}
rm {dest_filename}
write {binary} {dest_filename}
quit
"""
    
    try:
        subprocess.run(
            debugfs_cmd + ["-w", str(disk_path)],
            input=debugfs_commands.encode(),
            check=True,
            stdout=subprocess.DEVNULL,
            stderr=subprocess.PIPE
        )
    except subprocess.CalledProcessError as e:
        print(f"[{label}] failed to write binary to disk image", file=sys.stderr)
        if e.stderr:
            print(e.stderr.decode(), file=sys.stderr)
        return False
    
    print(f"[{label}] injected {dest_filename} to disk image", file=sys.stderr)
    return True


def mount_disk_image(
    disk_image: str,
    mount_point: str,
    label: str = "disk"
) -> Optional[bool]:
    """Mount disk image. Returns True if sudo was used, False if not, None on failure."""
    mount_path = Path(mount_point)
    mount_path.mkdir(parents=True, exist_ok=True)
    
    try:
        subprocess.run(
            ["mount", "-o", "loop", disk_image, str(mount_path)],
            check=True,
            stderr=subprocess.DEVNULL
        )
        return False
    except subprocess.CalledProcessError:
        try:
            subprocess.run(
                ["sudo", "mount", "-o", "loop", disk_image, str(mount_path)],
                check=True
            )
            return True
        except subprocess.CalledProcessError:
            print(f"[{label}] failed to mount disk image", file=sys.stderr)
            return None


def umount_disk_image(mount_point: str, use_sudo: bool = False) -> bool:
    """Unmount disk image."""
    cmd = ["sudo", "umount"] if use_sudo else ["umount"]
    try:
        subprocess.run(cmd + [mount_point], check=True)
        return True
    except subprocess.CalledProcessError:
        return False


if __name__ == "__main__":
    import tempfile
    
    print("Testing disk_utils...")
    
    with tempfile.NamedTemporaryFile(suffix=".img") as tmp:
        template = tmp.name
        target = template + ".copy"
        
        result = prepare_disk_from_template(template, target, "test")
        print(f"prepare_disk_from_template: {result}")
        
        if Path(target).exists():
            Path(target).unlink()
