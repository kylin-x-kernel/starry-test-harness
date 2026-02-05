#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2025 Weikang Guo <guoweikang.kernel@gmail.com>
# Copyright (C) 2025 KylinSoft Co., Ltd. <https://www.kylinos.cn/>
# See LICENSE for license details.
# 
# This file has been modified by KylinSoft on 2025.

set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "用法: $0 <test-module> [static]" >&2
  echo "test-module: functional, math, musl, regression" >&2
  exit 1
fi

TEST_MODULE="$1"
TEST_MODE="${2:-dynamic}"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE="$(cd "${SCRIPT_DIR}/../.." && pwd)"
TARGET_DIR="${WORKSPACE}/target/ci-cases"

CASE_LABEL="${STARRY_CASE_NAME:-libc-test-${TEST_MODULE}}"
RUN_ID="${STARRY_RUN_ID:-$(date +%Y%m%d-%H%M%S)}"
RUN_DIR="${STARRY_RUN_DIR:-${WORKSPACE}/logs/ci/${RUN_ID}}"
CASE_ARTIFACT_DIR="${STARRY_CASE_ARTIFACT_DIR:-${RUN_DIR}/artifacts/libc-test-${TEST_MODULE}}"

ARCH="${ARCH:-aarch64}"
case "${ARCH}" in
  x86_64) LIBC_TEST_DIR="${WORKSPACE}/tests/ci/cases/libc-test-x86" ;;
  aarch64) LIBC_TEST_DIR="${WORKSPACE}/tests/ci/cases/libc-test-aarch64" ;;
  *) LIBC_TEST_DIR="${WORKSPACE}/tests/ci/cases/libc-test-${ARCH}" ;;
esac

mkdir -p "${CASE_ARTIFACT_DIR}"
export CARGO_TARGET_DIR="${TARGET_DIR}"

if [[ ! -d "${LIBC_TEST_DIR}" ]]; then
  echo "[${CASE_LABEL}] 未找到 libc-test 目录：${LIBC_TEST_DIR}" >&2
  exit 1
fi

LIBC_TEST_MODULE_DIR="${LIBC_TEST_DIR}/src/${TEST_MODULE}"
if [[ ! -d "${LIBC_TEST_MODULE_DIR}" ]]; then
  echo "[${CASE_LABEL}] 未找到测试模块目录：${LIBC_TEST_MODULE_DIR}" >&2
  echo "[${CASE_LABEL}] 可用模块: functional, math, musl, regression" >&2
  exit 1
fi

if [[ "${SKIP_DISK_IMAGE:-0}" == "1" ]]; then
  exit 0
fi

XKERNEL_ROOT="${XKERNEL_ROOT:-${SCRIPT_DIR}/../../.cache/X-Kernel}"
if [[ "${XKERNEL_ROOT}" != /* ]]; then
  XKERNEL_ROOT="${WORKSPACE}/${XKERNEL_ROOT}"
fi
ROOTFS_TEMPLATE="${XKERNEL_ROOT}/rootfs-${ARCH}.img"

if [[ ! -f "${ROOTFS_TEMPLATE}" ]]; then
  echo "[${CASE_LABEL}] rootfs template not found: ${ROOTFS_TEMPLATE}" >&2
  exit 1
fi

if [[ -n "${XKERNEL_DISK_IMAGE:-}" ]]; then
  DISK_IMAGE="${XKERNEL_DISK_IMAGE}"
  if [[ "${DISK_IMAGE}" != /* ]]; then
    DISK_IMAGE="${WORKSPACE}/${XKERNEL_DISK_IMAGE}"
  fi
  mkdir -p "$(dirname "${DISK_IMAGE}")"
  CLEANUP_DISK=0
else
  DISK_IMAGE="$(mktemp /tmp/starry-disk-XXXXXX.img)"
  CLEANUP_DISK=1
fi
export DISK_IMG="${DISK_IMAGE}"

mkdir -p "$(dirname "${DISK_IMAGE}")"
cp "${ROOTFS_TEMPLATE}" "${DISK_IMAGE}" || sudo cp "${ROOTFS_TEMPLATE}" "${DISK_IMAGE}"
chmod 666 "${DISK_IMAGE}" 2>/dev/null || sudo chmod 666 "${DISK_IMAGE}"

MOUNT_POINT=$(mktemp -d /tmp/starry-mount-XXXXXX)
trap 'umount "${MOUNT_POINT}" 2>/dev/null || sudo umount "${MOUNT_POINT}" 2>/dev/null || true; rmdir "${MOUNT_POINT}" 2>/dev/null || true; (( CLEANUP_DISK )) && rm -f "${DISK_IMAGE}" || true; exit' EXIT

mount -o loop "${DISK_IMAGE}" "${MOUNT_POINT}" 2>/dev/null && USE_SUDO=0 || { sudo mount -o loop "${DISK_IMAGE}" "${MOUNT_POINT}" && USE_SUDO=1; }

if (( USE_SUDO )); then
  sudo mkdir -p "${MOUNT_POINT}/usr/libc-test/src/common"
  sudo cp "${LIBC_TEST_DIR}/src/common/runtest.exe" "${MOUNT_POINT}/usr/libc-test/src/common/"
  sudo cp -r "${LIBC_TEST_DIR}/src/"* "${MOUNT_POINT}/usr/libc-test/src/"
  sudo cp "${LIBC_TEST_DIR}/run" "${MOUNT_POINT}/usr/libc-test/"
  sudo chmod +x "${MOUNT_POINT}/usr/libc-test/run"
  sudo chmod +x "${MOUNT_POINT}/usr/libc-test/src/common/runtest.exe"
else
  mkdir -p "${MOUNT_POINT}/usr/libc-test/src/common"
  cp "${LIBC_TEST_DIR}/src/common/runtest.exe" "${MOUNT_POINT}/usr/libc-test/src/common/"
  cp -r "${LIBC_TEST_DIR}/src/"* "${MOUNT_POINT}/usr/libc-test/src/"
  cp "${LIBC_TEST_DIR}/run" "${MOUNT_POINT}/usr/libc-test/"
  chmod +x "${MOUNT_POINT}/usr/libc-test/run"
  chmod +x "${MOUNT_POINT}/usr/libc-test/src/common/runtest.exe"
fi

if (( USE_SUDO )); then
  sudo umount "${MOUNT_POINT}"
else
  umount "${MOUNT_POINT}"
fi
rmdir "${MOUNT_POINT}"

mkdir -p "${CASE_ARTIFACT_DIR}/bins"
cp -r "${LIBC_TEST_DIR}/src/${TEST_MODULE}" "${CASE_ARTIFACT_DIR}/bins/" 2>/dev/null || true

VM_RUNNER="${STARRY_VM_RUNNER:-${CI_TEST_RUNNER:-${WORKSPACE}/scripts/xkernel_vm_runner.py}}"
if [[ ! -x "${VM_RUNNER}" ]]; then
  echo "[${CASE_LABEL}] 未找到 starry_vm_runner：${VM_RUNNER}" >&2
  exit 1
fi

COMMAND_TIMEOUT="${STARRY_CASE_TIMEOUT_SECS:-600}"
VM_STDOUT="${CASE_ARTIFACT_DIR}/vm-${RUN_ID}.log"
VM_STDERR="${CASE_ARTIFACT_DIR}/vm-${RUN_ID}.err"

TEST_COMMAND="cd /usr/libc-test && sh run src/${TEST_MODULE} ${TEST_MODE}"
python3 "${VM_RUNNER}" \
  --root "${XKERNEL_ROOT}" \
  --arch "${ARCH}" \
  --command "${TEST_COMMAND}" \
  --command-timeout "${COMMAND_TIMEOUT}" \
  2> >(tee "${VM_STDERR}" >&2) | tee "${VM_STDOUT}" || true

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

[[ "${TOTAL_COUNT}" == "0" ]] && exit 1

[[ "${FAILED_COUNT}" != "0" ]] && exit 1
exit 0
