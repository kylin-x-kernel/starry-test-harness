#!/usr/bin/env bash
# Wrapper script for running VSOCK tests with host companion
set -euo pipefail

if [[ $# -lt 1 ]]; then
  echo "用法: $0 <binary-name> [companion-name]" >&2
  exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE="$(cd "${SCRIPT_DIR}/../.." && pwd)"

BINARY_NAME="$1"
COMPANION_NAME="$2"

# Ensure vhost-vsock device is accessible for VSOCK tests
#if [[ -e /dev/vhost-vsock ]]; then
#  sudo chmod 666 /dev/vhost-vsock || true
#fi
# todo!(): 目前 CI 环境不确定有没有 /dev/vhost-vsock，先注释掉上述代码，等以后有了再放开

# Build host companion and verify it exists 
COMPANION_PATH="${WORKSPACE}/artifacts/host-companions/${COMPANION_NAME}"
echo "[vsock-test] Building host companion: ${COMPANION_NAME}" >&2
"${WORKSPACE}/tests/ci-test-iter/host-companions/build.sh"

if [[ ! -x "${COMPANION_PATH}" ]]; then
  echo "[vsock-test] Failed to build or find host companion: ${COMPANION_PATH}" >&2
  exit 1
fi

# Export host companion path for run_case.sh
export STARRY_HOST_COMPANION="${COMPANION_PATH}"
export STARRY_COMPANION_DELAY="${STARRY_COMPANION_DELAY:-3}"
export STARRY_COMPANION_TIMEOUT="${STARRY_COMPANION_TIMEOUT:-30}"

# Run the actual test case
exec "${SCRIPT_DIR}/run_case.sh" "${BINARY_NAME}" "${COMPANION_NAME}"

