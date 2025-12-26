#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE="${STARRY_WORKSPACE_ROOT:-$(cd "${SCRIPT_DIR}/../../../.." && pwd)}"

UNIXBENCH_RELEASE_URL="${UNIXBENCH_RELEASE_URL:-https://github.com/sunhaosheng/rootfs-unixbench/releases/download/20251216/disk.img.xz}"
UNIXBENCH_CACHE_DIR="${WORKSPACE}/.cache/unixbench"
UNIXBENCH_CACHE_IMG="${UNIXBENCH_CACHE_DIR}/disk.img"

# 从命令行参数接收要运行的测试用例
UNIXBENCH_TESTS="$*"

abspath() {
  local input=$1
  if [[ "${input}" == /* ]]; then
    printf "%s\n" "${input}"
  else
    printf "%s\n" "${WORKSPACE}/${input}"
  fi
}

log() {
  local msg=$1
  echo "[${CASE_LABEL}] ${msg}" >&2
}

download_unixbench_image() {
  local url=$1
  local output=$2

  mkdir -p "${UNIXBENCH_CACHE_DIR}"

  local tmp_dir
  tmp_dir="$(mktemp -d)"
  local archive="${tmp_dir}/disk.img.xz"
  local decompressed="${tmp_dir}/disk.img"

  if command -v curl >/dev/null 2>&1; then
    log "下载 UnixBench 镜像: ${url}"
    if ! curl -L --fail -o "${archive}" "${url}"; then
      log "curl 下载失败"
      rm -rf "${tmp_dir}"
      return 1
    fi
  elif command -v wget >/dev/null 2>&1; then
    log "下载 UnixBench 镜像: ${url}"
    if ! wget -O "${archive}" "${url}"; then
      log "wget 下载失败"
      rm -rf "${tmp_dir}"
      return 1
    fi
  else
    log "未找到 curl 或 wget，无法下载镜像"
    rm -rf "${tmp_dir}"
    return 1
  fi

  if ! command -v xz >/dev/null 2>&1; then
    log "未找到 xz，请安装 xz-utils"
    rm -rf "${tmp_dir}"
    return 1
  fi

  log "解压 UnixBench 镜像"
  if ! xz -dc "${archive}" >"${decompressed}"; then
    log "解压镜像失败"
    rm -rf "${tmp_dir}"
    return 1
  fi

  mkdir -p "$(dirname "${output}")"
  if ! mv "${decompressed}" "${output}"; then
    log "写入缓存镜像失败"
    rm -rf "${tmp_dir}"
    return 1
  fi

  rm -rf "${tmp_dir}"
  log "已缓存 UnixBench 镜像 -> ${output}"
  return 0
}


# === 阶段 1: 初始化标签与日志目录 ===
#   - CASE_LABEL/RUN_ID 控制日志命名
#   - 默认将运行日志写入 tests/unixbench/logs 与 suite 日志目录

CASE_LABEL="${STARRY_CASE_NAME:-byte-unixbench}"
RUN_ID="${STARRY_RUN_ID:-$(date +%Y%m%d-%H%M%S)}"
RUN_DIR_RAW="${STARRY_RUN_DIR:-${WORKSPACE}/logs/daily/${RUN_ID}}"
CASE_ARTIFACT_DIR_RAW="${STARRY_CASE_ARTIFACT_DIR:-${RUN_DIR_RAW}/artifacts/${CASE_LABEL}}"

RUN_DIR="$(abspath "${RUN_DIR_RAW}")"
CASE_ARTIFACT_DIR="$(abspath "${CASE_ARTIFACT_DIR_RAW}")"
mkdir -p "${CASE_ARTIFACT_DIR}"

COMMAND_TIMEOUT="${STARRY_CASE_TIMEOUT_SECS:-3600}"
HOST_VM_TIMEOUT_SECS="${STARRY_VM_HOST_TIMEOUT_SECS:-}"
if [[ -z "${HOST_VM_TIMEOUT_SECS}" && "${COMMAND_TIMEOUT}" =~ ^[0-9]+$ ]]; then
  HOST_VM_TIMEOUT_SECS=$((COMMAND_TIMEOUT + 300))
fi
if [[ -n "${HOST_VM_TIMEOUT_SECS}" && ! "${HOST_VM_TIMEOUT_SECS}" =~ ^[0-9]+$ ]]; then
  log "忽略非法的 STARRY_VM_HOST_TIMEOUT_SECS=${HOST_VM_TIMEOUT_SECS}"
  HOST_VM_TIMEOUT_SECS=""
fi
if [[ -n "${HOST_VM_TIMEOUT_SECS}" && "${HOST_VM_TIMEOUT_SECS}" -le 0 ]]; then
  HOST_VM_TIMEOUT_SECS=""
fi
TIMEOUT_BIN="$(command -v timeout 2>/dev/null || true)"
if [[ -n "${HOST_VM_TIMEOUT_SECS}" && -z "${TIMEOUT_BIN}" ]]; then
  log "timeout 命令不可用，将不启用额外的 host 超时保护"
  HOST_VM_TIMEOUT_SECS=""
fi
ARCH="${ARCH:-aarch64}"
UNIXBENCH_DEST_DIR="/root/UnixBench"

# === 阶段 2: 定位 StarryOS 根目录（仅用于 VM runner） ===

STARRYOS_ROOT_RAW="${STARRYOS_ROOT:-${WORKSPACE}/.cache/StarryOS}"
STARRYOS_ROOT="$(abspath "${STARRYOS_ROOT_RAW}")"

if [[ ! -d "${STARRYOS_ROOT}" ]]; then
  echo "[${CASE_LABEL}] 未找到 StarryOS 仓库: ${STARRYOS_ROOT}" >&2
  exit 1
fi

# === 阶段 3: 定位/下载 UnixBench 镜像 ===

if [[ -n "${UNIXBENCH_DISK_IMAGE:-}" ]]; then
  UNIXBENCH_TEMPLATE="$(abspath "${UNIXBENCH_DISK_IMAGE}")"
else
  UNIXBENCH_TEMPLATE="${UNIXBENCH_CACHE_IMG}"
  if [[ ! -f "${UNIXBENCH_TEMPLATE}" ]]; then
    if ! download_unixbench_image "${UNIXBENCH_RELEASE_URL}" "${UNIXBENCH_TEMPLATE}"; then
      log "下载 UnixBench 镜像失败"
      exit 1
    fi
  fi
fi

UNIXBENCH_TEMPLATE="$(abspath "${UNIXBENCH_TEMPLATE}")"

if [[ ! -f "${UNIXBENCH_TEMPLATE}" ]]; then
  echo "[${CASE_LABEL}] 未找到 UnixBench 镜像: ${UNIXBENCH_TEMPLATE}" >&2
  exit 1
fi

log "使用预配置镜像: ${UNIXBENCH_TEMPLATE}"

# === 阶段 4: 准备可写磁盘镜像 ===

CLEANUP_DISK=0
if [[ -n "${STARRYOS_DISK_IMAGE:-}" ]]; then
  DISK_IMAGE="$(abspath "${STARRYOS_DISK_IMAGE}")"
  mkdir -p "$(dirname "${DISK_IMAGE}")"
else
  DISK_IMAGE="$(mktemp /tmp/starry-byte-unixbench-XXXXXX.img)"
  CLEANUP_DISK=1
  trap 'if (( CLEANUP_DISK )); then rm -f "${DISK_IMAGE}" || true; fi' EXIT
fi
export DISK_IMG="${DISK_IMAGE}"

log "复制预配置镜像 -> ${DISK_IMAGE}"
mkdir -p "$(dirname "${DISK_IMAGE}")"
if ! cp "${UNIXBENCH_TEMPLATE}" "${DISK_IMAGE}"; then
  if ! sudo cp "${UNIXBENCH_TEMPLATE}" "${DISK_IMAGE}"; then
    log "无法复制预配置镜像"
    exit 1
  fi
fi

if ! chmod 666 "${DISK_IMAGE}"; then
  if ! sudo chmod 666 "${DISK_IMAGE}"; then
    log "无法调整磁盘权限: ${DISK_IMAGE}"
    exit 1
  fi
fi

# === 阶段 4.5: 注入运行脚本到镜像 ===

log "注入 UnixBench 运行脚本到镜像"
log "测试用例: ${UNIXBENCH_TESTS}"
INJECT_SCRIPT=$(cat <<INJECT_EOF
#!/bin/sh
set -eu

log() {
  printf '%s\n' "[UB] \$*"
}

log "switching to UnixBench directory"
cd /root/UnixBench

export UB_BINDIR=/root/UnixBench/pgms
log "UB_BINDIR set to \${UB_BINDIR}"

chmod +x Run
chmod -R +x pgms

log "launching UnixBench run with tests: ${UNIXBENCH_TESTS}"
if ./Run ${UNIXBENCH_TESTS}; then
  log "Run completed successfully"
  exit 0
else
  status=\$?
  log "Run exited with status \${status}"
  exit "\${status}"
fi
INJECT_EOF
)

MOUNT_POINT=$(mktemp -d)
CLEANUP_MOUNT=0
trap_cleanup() {
  if (( CLEANUP_MOUNT )); then
    if mountpoint -q "${MOUNT_POINT}"; then
      sudo umount "${MOUNT_POINT}" || true
    fi
    rm -rf "${MOUNT_POINT}" || true
  fi
  if (( CLEANUP_DISK )); then
    rm -f "${DISK_IMAGE}" || true
  fi
}
trap trap_cleanup EXIT

if ! sudo mount -o loop "${DISK_IMAGE}" "${MOUNT_POINT}"; then
  log "无法挂载磁盘镜像"
  exit 1
fi
CLEANUP_MOUNT=1

if ! sudo tee "${MOUNT_POINT}/root/run_unixbench.sh" >/dev/null <<<"${INJECT_SCRIPT}"; then
  log "无法写入运行脚本"
  exit 1
fi

if ! sudo chmod +x "${MOUNT_POINT}/root/run_unixbench.sh"; then
  log "无法设置脚本可执行权限"
  exit 1
fi

sudo umount "${MOUNT_POINT}"
CLEANUP_MOUNT=0
rm -rf "${MOUNT_POINT}"

log "脚本注入完成: /root/run_unixbench.sh"

# === 阶段 5: 启动 QEMU 并在 guest 中执行 UnixBench ===

VM_RUNNER_RAW="${STARRY_VM_RUNNER:-${CI_TEST_RUNNER:-${WORKSPACE}/scripts/starry_vm_runner.py}}"
VM_RUNNER="$(abspath "${VM_RUNNER_RAW}")"
if [[ ! -x "${VM_RUNNER}" ]]; then
  log "未找到 starry_vm_runner: ${VM_RUNNER}"
  exit 1
fi

VM_STDOUT="${CASE_ARTIFACT_DIR}/vm-${RUN_ID}.log"
VM_STDERR="${CASE_ARTIFACT_DIR}/vm-${RUN_ID}.err"

VM_COMMAND="/root/run_unixbench.sh"

log "启动 StarryOS,执行 UnixBench"
VM_RUNNER_CMD=(
  env
  PYTHONUNBUFFERED=1
  python3 "${VM_RUNNER}"
  --root "${STARRYOS_ROOT}"
  --arch "${ARCH}"
  --command "${VM_COMMAND}"
  --command-timeout "${COMMAND_TIMEOUT}"
)
if [[ -n "${HOST_VM_TIMEOUT_SECS}" ]]; then
  log "Host 级别超时保护: ${HOST_VM_TIMEOUT_SECS}s"
  RUN_CMD=("${TIMEOUT_BIN}" --foreground "${HOST_VM_TIMEOUT_SECS}" "${VM_RUNNER_CMD[@]}")
else
  RUN_CMD=("${VM_RUNNER_CMD[@]}")
fi
: >"${VM_STDOUT}"
: >"${VM_STDERR}"
if [[ -t 1 ]]; then
  if ! "${RUN_CMD[@]}" \
    2> >(tee "${VM_STDERR}" | tee /dev/tty >&2) | tee "${VM_STDOUT}" | tee /dev/tty
  then
    status=$?
    if [[ "${status}" -eq 124 && -n "${HOST_VM_TIMEOUT_SECS}" ]]; then
      log "虚拟机执行超过 ${HOST_VM_TIMEOUT_SECS}s，被 timeout 终止"
    else
      log "虚拟机执行失败，详见 ${VM_STDERR}"
    fi
    tail -n 40 "${VM_STDERR}" >&2 2>/dev/null || true
    exit 1
  fi
else
  if ! "${RUN_CMD[@]}" \
    2> >(tee "${VM_STDERR}" >&2) | tee "${VM_STDOUT}"
  then
    status=$?
    if [[ "${status}" -eq 124 && -n "${HOST_VM_TIMEOUT_SECS}" ]]; then
      log "虚拟机执行超过 ${HOST_VM_TIMEOUT_SECS}s，被 timeout 终止"
    else
      log "虚拟机执行失败，详见 ${VM_STDERR}"
    fi
    tail -n 40 "${VM_STDERR}" >&2 2>/dev/null || true
    exit 1
  fi
fi

LOG_SOURCE="${VM_STDOUT}"
if [[ ! -s "${LOG_SOURCE}" && -s "${VM_STDERR}" ]]; then
  LOG_SOURCE="${VM_STDERR}"
  log "命令输出主要写入 stderr，改用 ${LOG_SOURCE} 解析"
fi

log "StarryOS 执行完成，guest 日志位于 ${LOG_SOURCE}"


# === 阶段 6: 收集 Benchmark 结果并导出总结 ===

SUMMARY_FILE="${CASE_ARTIFACT_DIR}/summary.txt"
RESULT_JSON="${CASE_ARTIFACT_DIR}/results.json"
if python3 - "${LOG_SOURCE}" "${SUMMARY_FILE}" "${RESULT_JSON}" <<'PY'
import json
import re
import sys
from pathlib import Path

log_path = Path(sys.argv[1])
summary_path = Path(sys.argv[2])
result_path = Path(sys.argv[3])

text = log_path.read_text(encoding="utf-8", errors="ignore")
text = re.sub(r"\x1b\[[0-9;]*[A-Za-z]", "", text)

block_lines = []
collect = False
score = None
for line in text.splitlines():
    if line.startswith("System Benchmarks Partial Index"):
        collect = True
    if collect:
        if line.strip():
            block_lines.append(line.rstrip())
        if line.startswith("System Benchmarks Index Score"):
            match = re.search(r"([0-9]+(?:\\.[0-9]+)?)", line)
            if match:
                score = float(match.group(1))
            break

if block_lines:
    summary_path.write_text("\n".join(block_lines) + "\n", encoding="utf-8")
else:
    summary_path.write_text("", encoding="utf-8")

metrics = []
table_pattern = re.compile(r"^(?P<name>[A-Za-z0-9 /\-]+?)\s{2,}(?P<baseline>(?:[0-9]+(?:\.[0-9]+)?)|---)\s+(?P<result>[0-9]+(?:\.[0-9]+)?)\s+(?P<index>(?:[0-9]+(?:\.[0-9]+)?)|---)$")
capture = False
for line in text.splitlines():
    if line.startswith("System Benchmarks Partial Index"):
        capture = True
        continue
    if capture:
        if not line.strip():
            continue
        if line.startswith("System Benchmarks Index Score"):
            break
        match = table_pattern.match(line.rstrip())
        if match:
            metrics.append(
                {
                    "name": match.group("name").strip(),
                    "baseline": None if match.group("baseline") == "---" else float(match.group("baseline")),
                    "result": float(match.group("result")),
                    "index": None if match.group("index") == "---" else float(match.group("index")),
                }
            )

payload = {
    "status": "pass",
    "score_type": "partial_index",
    "score": score,
    "metrics": metrics,
}
result_path.write_text(json.dumps(payload, indent=2), encoding="utf-8")
PY
then
  if [[ -s "${SUMMARY_FILE}" ]]; then
    log "解析得分："
    cat "${SUMMARY_FILE}"
  else
    log "未在输出中找到 System Benchmarks 得分"
    exit 1
  fi
  if [[ -s "${RESULT_JSON}" ]]; then
    log "指标详情 -> ${RESULT_JSON}"
    # 执行成功，清空 stderr（避免混淆）
    : >"${VM_STDERR}"
  else
    log "未生成 results.json"
    exit 1
  fi
else
  log "解析 UnixBench 输出失败"
  exit 1
fi

log "byte-unixbench 用例完成"
log "guest stdout -> ${VM_STDOUT}"
log "summary -> ${SUMMARY_FILE}"

