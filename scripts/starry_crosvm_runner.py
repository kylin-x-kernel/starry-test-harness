#!/usr/bin/env python3
"""
Starry OS crosvm Runner
替代 starry_vm_runner.py，使用 crosvm 而非 QEMU 运行 StarryOS
"""

import argparse
import json
import os
import re
import socket
import subprocess
import sys
import threading
import time
from pathlib import Path

READY_MSG = "crosvm: started"  # crosvm 启动标识
PROMPT = "starry:~# "  # Shell 提示符
EXIT_PATTERN = re.compile(r"__EXIT:(-?\d+)__")


def log(msg: str) -> None:
    print(f"[starry-crosvm] {msg}")


def read_stderr(proc: subprocess.Popen, ready_event: threading.Event) -> None:
    """读取 crosvm 的 stderr 输出，检测启动完成信号"""
    try:
        if proc.stderr:
            for line in proc.stderr:
                sys.stderr.write(line)
                # crosvm 启动成功的标识（可能需要根据实际调整）
                if "VM started" in line or "Run" in line:
                    ready_event.set()
    finally:
        ready_event.set()


def connect_serial(socket_path: str, retries: int, delay: float) -> socket.socket:
    """连接到 crosvm 的 serial socket"""
    last_err = None
    for _ in range(retries):
        try:
            sock = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
            sock.connect(socket_path)
            sock.settimeout(5)
            return sock
        except OSError as err:
            last_err = err
            time.sleep(delay)
    raise last_err if last_err else RuntimeError("unable to connect to serial")


def sanitize_output(raw: str, command: str, full_command: str) -> str:
    """清理输出内容，移除命令回显和提示符"""
    text = raw.replace("\r", "")
    for token in (full_command, command, PROMPT):
        if token:
            text = text.replace(token, "")
    text = text.strip()
    
    if "__EXIT:" in text:
        text = EXIT_PATTERN.split(text)[0].strip()
    
    if not text:
        return ""

    # 尝试提取 JSON
    start = text.find("{")
    end = text.rfind("}")
    if start != -1 and end != -1 and end >= start:
        candidate = text[start : end + 1].strip()
        try:
            json.loads(candidate)
            return candidate
        except json.JSONDecodeError:
            pass
    
    return text


def run(args):
    """运行 StarryOS on crosvm"""
    root = Path(args.root).resolve()
    if not root.is_dir():
        raise SystemExit(f"StarryOS root not found: {root}")

    # 检查内核文件
    kernel = root / "arceos" / args.kernel
    if not kernel.exists():
        raise SystemExit(f"Kernel not found: {kernel}. Run make crosvm first.")

    # 检查 rootfs
    rootfs = Path(args.rootfs).resolve() if args.rootfs else None
    if rootfs and not rootfs.exists():
        raise SystemExit(f"RootFS not found: {rootfs}")

    # 准备 serial socket
    serial_socket = f"/tmp/starry-crosvm-serial-{os.getpid()}.sock"
    if os.path.exists(serial_socket):
        os.unlink(serial_socket)

    # 构建 crosvm 命令
    # 解析内存大小（转换为 MiB）
    memory_str = args.memory.upper()
    if memory_str.endswith('G'):
        memory_mib = int(memory_str[:-1]) * 1024
    elif memory_str.endswith('M'):
        memory_mib = int(memory_str[:-1])
    else:
        memory_mib = int(memory_str)  # 假设已经是 MiB
    
    cmd = [
        "crosvm", "run",
        "--cpus", f"num-cores={args.cpus}",
        "--mem", f"size={memory_mib}",
        "--serial", "type=stdout,num=1,console=true,stdin=true",
    ]

    # 添加 rootfs（如果提供）
    if rootfs:
        cmd.extend(["--root", str(rootfs)])
        cmd.extend(["--rwroot"])  # 可写根文件系统

    # 添加网络（可选）
    if args.net:
        cmd.extend(["--net", "tap-name=crosvm-tap"])

    # 添加内核参数
    if args.params:
        cmd.extend(["--params", args.params])
    else:
        # 默认内核参数
        cmd.extend(["--params", "console=ttyS0 root=/dev/vda rw"])

    # 内核镜像
    cmd.append(str(kernel))

    log(f"Launching crosvm: {' '.join(cmd)}")
    log(f"Serial socket: {serial_socket}")

    env = os.environ.copy()
    proc = subprocess.Popen(
        cmd,
        cwd=root,
        stderr=subprocess.PIPE,
        stdout=subprocess.PIPE,
        text=True,
        env=env,
    )

    ready = threading.Event()
    thread = threading.Thread(target=read_stderr, args=(proc, ready), daemon=True)
    thread.start()

    exit_code = 0
    payload = None
    command = args.command
    full_command = f"{command}; echo __EXIT:$?__" if command else None

    try:
        # 等待 crosvm 启动
        log("Waiting for crosvm to start...")
        if not ready.wait(timeout=args.boot_timeout):
            # 即使没有检测到准备信号，也尝试连接
            log("Timeout waiting for ready signal, trying to connect anyway...")
        
        if proc.poll() is not None:
            raise RuntimeError("crosvm exited prematurely")

        # 等待 serial socket 创建
        for i in range(20):
            if os.path.exists(serial_socket):
                break
            time.sleep(0.5)
        else:
            raise RuntimeError(f"Serial socket not created: {serial_socket}")

        log("Connecting to serial console...")
        
        attempt = 0
        completed = False
        last_err = None
        
        while attempt < args.retries and not completed:
            try:
                sock = connect_serial(serial_socket, retries=1, delay=1)
            except OSError as err:
                last_err = err
                attempt += 1
                time.sleep(1)
                continue

            try:
                buffer = ""
                command_buffer = ""
                prompt_seen = False
                command_sent = False
                command_start = None

                sock.settimeout(2)

                while True:
                    try:
                        data = sock.recv(1024)
                    except socket.timeout:
                        if prompt_seen and not command_sent:
                            break
                        if command_sent and command_start is not None:
                            if time.monotonic() - command_start > args.command_timeout:
                                raise RuntimeError("command timed out")
                        continue

                    if not data:
                        break

                    chunk = data.decode("utf-8", errors="replace")
                    
                    if command:
                        sys.stderr.write(chunk)
                    else:
                        print(chunk, end="")

                    buffer += chunk

                    # 检测到 shell 提示符
                    if not prompt_seen and PROMPT in buffer:
                        prompt_seen = True
                        if command and full_command:
                            log("Shell prompt detected, executing command")
                            sock.sendall(full_command.encode("utf-8") + b"\n")
                            command_sent = True
                            command_start = time.monotonic()
                            command_buffer = ""
                            buffer = ""
                        else:
                            log("Shell prompt detected, sending exit")
                            sock.sendall(b"exit\n")
                            completed = True
                            break

                    # 命令执行完成检测
                    if command_sent and full_command:
                        command_buffer += chunk
                        match = EXIT_PATTERN.search(command_buffer)
                        if match:
                            exit_code = int(match.group(1))
                            payload = sanitize_output(command_buffer, command, full_command)
                            log(f"Command completed with exit code {exit_code}")
                            sock.sendall(b"exit\n")
                            completed = True
                            break
                        
                        if command_start is not None:
                            if (time.monotonic() - command_start) > args.command_timeout:
                                raise RuntimeError("command timed out")
                
                if completed:
                    break
                    
            finally:
                try:
                    sock.close()
                except OSError:
                    pass
            
            attempt += 1

        if command:
            if payload is None:
                raise RuntimeError("shell prompt not observed or command output missing")
        elif not completed:
            raise last_err or RuntimeError("shell prompt not observed")

        log("StarryOS on crosvm exited cleanly")
        return exit_code, payload

    finally:
        # 清理
        try:
            proc.terminate()
            proc.wait(timeout=5)
        except subprocess.TimeoutExpired:
            proc.kill()
            proc.wait(timeout=5)
        
        # 删除 serial socket
        if os.path.exists(serial_socket):
            try:
                os.unlink(serial_socket)
            except OSError:
                pass


if __name__ == "__main__":
    parser = argparse.ArgumentParser(
        description="Run StarryOS under crosvm and optionally execute a command"
    )
    parser.add_argument("--root", required=True, 
                       help="Path to StarryOS repository root")
    parser.add_argument("--kernel", default="starryos.bin",
                       help="Kernel binary name (default: starryos.bin)")
    parser.add_argument("--rootfs", 
                       help="Path to rootfs image")
    parser.add_argument("--arch", default="aarch64",
                       help="Architecture (default: aarch64)")
    parser.add_argument("--cpus", type=int, default=2,
                       help="Number of CPUs (default: 2)")
    parser.add_argument("--memory", default="2G",
                       help="Memory size (default: 2G)")
    parser.add_argument("--net", action="store_true",
                       help="Enable networking")
    parser.add_argument("--params",
                       help="Kernel command line parameters")
    parser.add_argument("--boot-timeout", type=int, default=60,
                       help="Boot timeout in seconds (default: 60)")
    parser.add_argument("--retries", type=int, default=5,
                       help="Connection retries (default: 5)")
    parser.add_argument("--command",
                       help="Shell command to execute once the prompt is ready")
    parser.add_argument("--command-timeout", type=int, default=600,
                       help="Command timeout in seconds (default: 600)")
    
    args = parser.parse_args()

    try:
        exit_code, payload = run(args)
    except Exception as exc:
        log(f"ERROR: {exc}")
        import traceback
        traceback.print_exc()
        sys.exit(1)

    if payload is not None:
        if payload and not payload.endswith("\n"):
            print(payload)
        else:
            print(payload, end="")
    
    sys.exit(exit_code)
