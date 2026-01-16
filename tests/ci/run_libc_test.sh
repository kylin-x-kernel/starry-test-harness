#!/usr/bin/env bash
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "用法: $0 <test-module> [static]" >&2
  echo "test-module: functional, math, musl, regression" >&2
  echo "可选第二参数 static 表示运行静态链接测试" >&2
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE="$(cd "${SCRIPT_DIR}/../.." && pwd)"
LIBC_TEST_DIR="${WORKSPACE}/tests/ci/cases/libc-test"
TARGET_DIR="${WORKSPACE}/target/ci-cases"

TEST_MODULE="$1"
TEST_MODE="${2:-dynamic}"
CASE_LABEL="${STARRY_CASE_NAME:-libc-test-${TEST_MODULE}}"

RUN_ID="${STARRY_RUN_ID:-$(date +%Y%m%d-%H%M%S)}"
RUN_DIR="${STARRY_RUN_DIR:-${WORKSPACE}/logs/ci/${RUN_ID}}"
CASE_ARTIFACT_DIR="${STARRY_CASE_ARTIFACT_DIR:-${RUN_DIR}/artifacts/libc-test-${TEST_MODULE}}"

TARGET_TRIPLE="${TARGET_TRIPLE:-aarch64-unknown-linux-musl}"

# Check for cross-compiler
if [[ "${TARGET_TRIPLE}" == "aarch64-unknown-linux-musl" ]]; then
  REQUIRED_LINKER="aarch64-linux-musl-gcc"
  LINKER_ENV="${CARGO_TARGET_AARCH64_UNKNOWN_LINUX_MUSL_LINKER:-}"
  if [[ -n "${LINKER_ENV}" ]]; then
    LINKER_BIN="${LINKER_ENV%% *}"
    if ! command -v "${LINKER_BIN}" >/dev/null 2>&1; then
      echo "[${CASE_LABEL}] CARGO_TARGET_AARCH64_UNKNOWN_LINUX_MUSL_LINKER=${LINKER_ENV} 但未找到可执行文件" >&2
      exit 1
    fi
  elif [[ -n "${CC_aarch64_unknown_linux_musl:-}" ]]; then
    if ! command -v "${CC_aarch64_unknown_linux_musl}" >/dev/null 2>&1; then
      echo "[${CASE_LABEL}] CC_aarch64_unknown_linux_musl=${CC_aarch64_unknown_linux_musl} 但未找到可执行文件" >&2
      exit 1
    fi
    export CARGO_TARGET_AARCH64_UNKNOWN_LINUX_MUSL_LINKER="${CC_aarch64_unknown_linux_musl}"
  elif command -v "${REQUIRED_LINKER}" >/dev/null 2>&1; then
    export CARGO_TARGET_AARCH64_UNKNOWN_LINUX_MUSL_LINKER="${REQUIRED_LINKER}"
  else
    cat >&2 <<MSG
[${CASE_LABEL}] 未检测到 aarch64 musl 交叉编译器。
请安装 ${REQUIRED_LINKER} 或设置 CARGO_TARGET_AARCH64_UNKNOWN_LINUX_MUSL_LINKER/CC_aarch64_unknown_linux_musl 后重试。
MSG
    exit 1
  fi
fi

mkdir -p "${CASE_ARTIFACT_DIR}"
export CARGO_TARGET_DIR="${TARGET_DIR}"

if [[ ! -d "${LIBC_TEST_DIR}" ]]; then
  echo "[${CASE_LABEL}] 未找到 libc-test 目录：${LIBC_TEST_DIR}" >&2
  exit 1
fi

if [[ "${SKIP_DISK_IMAGE:-0}" == "1" ]]; then
  echo "[${CASE_LABEL}] SKIP_DISK_IMAGE=1，跳过写入磁盘镜像" >&2
  exit 0
fi

# Create fresh disk image from template
STARRYOS_ROOT="${STARRYOS_ROOT:-${SCRIPT_DIR}/../../.cache/StarryOS}"
if [[ "${STARRYOS_ROOT}" != /* ]]; then
  STARRYOS_ROOT="${WORKSPACE}/${STARRYOS_ROOT}"
fi
ARCH="${ARCH:-aarch64}"
ROOTFS_TEMPLATE="${STARRYOS_ROOT}/rootfs-${ARCH}.img"
CLEANUP_DISK=0

if [[ ! -f "${ROOTFS_TEMPLATE}" ]]; then
  echo "[${CASE_LABEL}] rootfs template not found: ${ROOTFS_TEMPLATE}" >&2
  echo "[${CASE_LABEL}] run the build script first to download it" >&2
  exit 1
fi

if [[ -n "${STARRYOS_DISK_IMAGE:-}" ]]; then
  DISK_IMAGE="${STARRYOS_DISK_IMAGE}"
  if [[ "${DISK_IMAGE}" != /* ]]; then
    DISK_IMAGE="${WORKSPACE}/${STARRYOS_DISK_IMAGE}"
  fi
  mkdir -p "$(dirname "${DISK_IMAGE}")"
else
  DISK_IMAGE="$(mktemp /tmp/starry-disk-XXXXXX.img)"
  CLEANUP_DISK=1
fi
export DISK_IMG="${DISK_IMAGE}"

echo "[${CASE_LABEL}] creating fresh disk image from template" >&2
mkdir -p "$(dirname "${DISK_IMAGE}")"
if ! cp "${ROOTFS_TEMPLATE}" "${DISK_IMAGE}"; then
  if ! sudo cp "${ROOTFS_TEMPLATE}" "${DISK_IMAGE}"; then
    echo "[${CASE_LABEL}] failed to copy rootfs template into ${DISK_IMAGE}" >&2
    exit 1
  fi
fi
if ! chmod 666 "${DISK_IMAGE}"; then
  if ! sudo chmod 666 "${DISK_IMAGE}"; then
    echo "[${CASE_LABEL}] failed to adjust permissions on ${DISK_IMAGE}" >&2
    exit 1
  fi
fi

if [[ ! -f "${DISK_IMAGE}" ]]; then
  echo "[${CASE_LABEL}] failed to create disk image: ${DISK_IMAGE}" >&2
  exit 1
fi

if ! command -v debugfs >/dev/null 2>&1; then
  echo "[${CASE_LABEL}] 未检测到 debugfs，请安装 e2fsprogs" >&2
  exit 1
fi

# Validate test module
LIBC_TEST_BINS_DIR="${LIBC_TEST_DIR}/libc-test-bins/src/${TEST_MODULE}"
if [[ ! -d "${LIBC_TEST_BINS_DIR}" ]]; then
  echo "[${CASE_LABEL}] 未找到测试模块目录：${LIBC_TEST_BINS_DIR}" >&2
  echo "[${CASE_LABEL}] 可用模块: functional, math, musl, regression" >&2
  exit 1
fi

# Copy entire libc-test directory to disk image
echo "[${CASE_LABEL}] 写入整个 libc-test 目录到磁盘镜像" >&2

DEBUGFS_CMD="debugfs"
if [[ ! -w "${DISK_IMAGE}" ]]; then
  echo "[${CASE_LABEL}] disk image not writable, using sudo for debugfs" >&2
  DEBUGFS_CMD="sudo debugfs"
fi

# Create temporary mount point
MOUNT_POINT=$(mktemp -d /tmp/starry-mount-XXXXXX)
SCRIPT_EXIT_CODE=0
trap 'code=$?; umount "${MOUNT_POINT}" 2>/dev/null || sudo umount "${MOUNT_POINT}" 2>/dev/null || true; rmdir "${MOUNT_POINT}" 2>/dev/null || true; if (( CLEANUP_DISK )); then rm -f "${DISK_IMAGE}"; fi; exit ${code}' EXIT

# Mount the disk image
if ! mount -o loop "${DISK_IMAGE}" "${MOUNT_POINT}" 2>/dev/null; then
  if ! sudo mount -o loop "${DISK_IMAGE}" "${MOUNT_POINT}"; then
    echo "[${CASE_LABEL}] failed to mount disk image" >&2
    exit 1
  fi
  USE_SUDO=1
else
  USE_SUDO=0
fi

# Create target directory and copy libc-test structure (flatten libc-test-bins)
if (( USE_SUDO )); then
  sudo mkdir -p "${MOUNT_POINT}/usr/libc-test/src/common"
  sudo cp "${LIBC_TEST_DIR}/libc-test-bins/runtest.exe" "${MOUNT_POINT}/usr/libc-test/src/common/"
  sudo cp -r "${LIBC_TEST_DIR}/libc-test-bins/src/"* "${MOUNT_POINT}/usr/libc-test/src/"
  sudo cp "${LIBC_TEST_DIR}/run" "${MOUNT_POINT}/usr/libc-test/"
  sudo chmod +x "${MOUNT_POINT}/usr/libc-test/run"
  sudo chmod +x "${MOUNT_POINT}/usr/libc-test/src/common/runtest.exe"
else
  mkdir -p "${MOUNT_POINT}/usr/libc-test/src/common"
  cp "${LIBC_TEST_DIR}/libc-test-bins/runtest.exe" "${MOUNT_POINT}/usr/libc-test/src/common/"
  cp -r "${LIBC_TEST_DIR}/libc-test-bins/src/"* "${MOUNT_POINT}/usr/libc-test/src/"
  cp "${LIBC_TEST_DIR}/run" "${MOUNT_POINT}/usr/libc-test/"
  chmod +x "${MOUNT_POINT}/usr/libc-test/run"
  chmod +x "${MOUNT_POINT}/usr/libc-test/src/common/runtest.exe"
fi

# Unmount
if (( USE_SUDO )); then
  sudo umount "${MOUNT_POINT}"
else
  umount "${MOUNT_POINT}"
fi
rmdir "${MOUNT_POINT}"

echo "[${CASE_LABEL}] libc-test 目录已完整复制到磁盘镜像" >&2

# Save test binaries to artifact directory
mkdir -p "${CASE_ARTIFACT_DIR}/bins"
cp -r "${LIBC_TEST_DIR}/libc-test-bins/src/${TEST_MODULE}" "${CASE_ARTIFACT_DIR}/bins/" 2>/dev/null || true

VM_RUNNER="${STARRY_VM_RUNNER:-${CI_TEST_RUNNER:-${WORKSPACE}/scripts/starry_vm_runner.py}}"
if [[ ! -x "${VM_RUNNER}" ]]; then
  echo "[${CASE_LABEL}] 未找到 starry_vm_runner：${VM_RUNNER}" >&2
  exit 1
fi

COMMAND_TIMEOUT="${STARRY_CASE_TIMEOUT_SECS:-600}"
VM_STDOUT="${CASE_ARTIFACT_DIR}/vm-${RUN_ID}.log"
VM_STDERR="${CASE_ARTIFACT_DIR}/vm-${RUN_ID}.err"

# Run the test module
TEST_COMMAND="cd /usr/libc-test && sh run src/${TEST_MODULE} ${TEST_MODE}"
echo "[${CASE_LABEL}] 启动 StarryOS 执行 ${TEST_MODULE} 测试 (${TEST_MODE})" >&2
python3 "${VM_RUNNER}" \
  --root "${STARRYOS_ROOT}" \
  --arch "${ARCH}" \
  --command "${TEST_COMMAND}" \
  --command-timeout "${COMMAND_TIMEOUT}" \
  2> >(tee "${VM_STDERR}" >&2) | tee "${VM_STDOUT}" || true

# Parse test results
TOTAL_LINE=$(grep "^Total:" "${VM_STDOUT}" | tail -n 1 || true)
PASSED_LINE=$(grep "^Passed:" "${VM_STDOUT}" | tail -n 1 || true)
FAILED_LINE=$(grep "^Failed:" "${VM_STDOUT}" | tail -n 1 || true)

if [[ -z "${TOTAL_LINE}" ]]; then
  echo "[${CASE_LABEL}] 未找到测试结果" >&2
  exit 1
fi

TOTAL_COUNT=$(echo "${TOTAL_LINE}" | grep -oE '[0-9]+' || echo "0")
PASSED_COUNT=$(echo "${PASSED_LINE}" | grep -oE '[0-9]+' || echo "0")
FAILED_COUNT=$(echo "${FAILED_LINE}" | grep -oE '[0-9]+' || echo "0")

echo "[${CASE_LABEL}] 测试结果：" >&2
echo "${TOTAL_LINE}" >&2
echo "${PASSED_LINE}" >&2
echo "${FAILED_LINE}" >&2

# Check for empty test run
if [[ "${TOTAL_COUNT}" == "0" ]]; then
  echo "[${CASE_LABEL}] 未发现任何测试用例（Total=0），标记为失败" >&2
  SCRIPT_EXIT_CODE=1
  exit 1
fi

if [[ "${FAILED_COUNT}" != "0" ]]; then
  echo "[${CASE_LABEL}] 发现 ${FAILED_COUNT} 个失败的测试用例" >&2
  FAILED_TESTS=$(grep "^FAIL " "${VM_STDOUT}" || true)
  if [[ -n "${FAILED_TESTS}" ]]; then
    echo "[${CASE_LABEL}] 失败的测试：" >&2
    echo "${FAILED_TESTS}" >&2
  fi
  SCRIPT_EXIT_CODE=1
  exit 1
fi

echo "[${CASE_LABEL}] 全部 ${PASSED_COUNT} 个测试用例通过" >&2
echo "[${CASE_LABEL}] StarryOS 执行完成，日志已写入 ${VM_STDOUT}" >&2
SCRIPT_EXIT_CODE=0
exit 0
