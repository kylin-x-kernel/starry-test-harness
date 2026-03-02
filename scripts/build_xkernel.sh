#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2025 Weikang Guo <guoweikang.kernel@gmail.com>
# Copyright (C) 2025 KylinSoft Co., Ltd. <https://www.kylinos.cn/>
# See LICENSE for license details.
# 
# This file has been modified by KylinSoft on 2025.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/.." && pwd)"

SUITE=${1:-ci-test}
ARCH=${ARCH:-aarch64}

XKERNEL_REMOTE="${XKERNEL_REMOTE:-https://github.com/kylin-x-kernel/x-kernel}"
XKERNEL_COMMIT="${XKERNEL_REF:-${XKERNEL_COMMIT:-main}}"
XKERNEL_BRANCH="${XKERNEL_BRANCH:-local}"
ARTIFACT_DIR="${REPO_ROOT}/artifacts/${SUITE}"
LOG_FILE="${ARTIFACT_DIR}/build.log"
XKERNEL_CARGO_UPDATE="${XKERNEL_CARGO_UPDATE:-1}"
STARRY_CI_UNAME_LINUX="${STARRY_CI_UNAME_LINUX:-1}"

if [[ -n "${CI:-}" || -n "${GITHUB_ACTIONS:-}" ]]; then
  XKERNEL_ROOT=${XKERNEL_ROOT:-${REPO_ROOT}/.cache/X-Kernel}
else
  if [[ "${XKERNEL_REMOTE}" = /* ]]; then
    XKERNEL_ROOT="${XKERNEL_REMOTE}"
  else
    XKERNEL_ROOT="${REPO_ROOT}/.cache/X-Kernel"
  fi
fi

if [[ "${XKERNEL_ROOT}" != /* ]]; then
  XKERNEL_ROOT="${REPO_ROOT}/${XKERNEL_ROOT}"
fi

mkdir -p "${ARTIFACT_DIR}" "$(dirname "${XKERNEL_ROOT}")"
: >"${LOG_FILE}"
exec > >(tee -a "${LOG_FILE}") 2>&1

log() {
  echo "[build:starry] $*"
}

if [[ ! -d "${XKERNEL_ROOT}/.git" ]]; then
  log "Cloning X-Kernel from ${XKERNEL_REMOTE} to ${XKERNEL_ROOT}"
  git clone --recursive "${XKERNEL_REMOTE}" "${XKERNEL_ROOT}"
  git -C "${XKERNEL_ROOT}" checkout "${XKERNEL_COMMIT}"
fi

log "----------------------------------------"
log "X-Kernel Source: ${XKERNEL_ROOT}"
log "  commit : $(git -C "${XKERNEL_ROOT}" rev-parse HEAD)"
log "----------------------------------------"

XKERNEL_COMMIT=$(git -C "${XKERNEL_ROOT}" rev-parse HEAD)
log "X-Kernel commit: ${XKERNEL_COMMIT}"

# Download rootfs template with cache directory support
ROOTFS_CACHE_DIR="${ROOTFS_CACHE_DIR:-${REPO_ROOT}/.cache/rootfs}"
mkdir -p "${ROOTFS_CACHE_DIR}"
log "Ensuring rootfs template is available in ${ROOTFS_CACHE_DIR}"
IMG="rootfs-${ARCH}.img"

ensure_rootfs_template() {
  local arch="$1"
  local img_path="${ROOTFS_CACHE_DIR}/rootfs-${arch}.img"

  if [[ "${arch}" == "x86_64" ]]; then
    local x86_url="${X86_64_ROOTFS_URL:-https://github.com/Starry-OS/rootfs/releases/download/20250917/rootfs-x86_64.img.xz}"
    if [[ ! -f "${img_path}" ]]; then
      log "Downloading rootfs template for x86_64 from ${x86_url}" >&2
      curl -f -L "${x86_url}" -o "${img_path}.xz"
      xz -d "${img_path}.xz"
    fi
    log "Rootfs template ready: ${img_path}" >&2
    echo "${img_path}"
    return 0
  fi

  local img_version="${ROOTFS_VERSION:-20250917}"
  local img_url="https://github.com/Starry-OS/rootfs/releases/download/${img_version}"
  if [[ ! -f "${img_path}" ]]; then
    log "Downloading rootfs template rootfs-${arch}.img (version ${img_version})" >&2
    curl -f -L "${img_url}/rootfs-${arch}.img.xz" -o "${img_path}.xz"
    xz -d "${img_path}.xz"
  fi
  log "Rootfs template ready: ${img_path}" >&2
  echo "${img_path}"
}

IMG_PATH="$(ensure_rootfs_template "${ARCH}")"

# Copy rootfs template to X-Kernel root for test scripts
XKERNEL_IMG="${XKERNEL_ROOT}/${IMG}"
if [[ ! -f "${XKERNEL_IMG}" ]] || [[ "${IMG_PATH}" -nt "${XKERNEL_IMG}" ]]; then
  log "Copying rootfs template to ${XKERNEL_IMG}"
  cp "${IMG_PATH}" "${XKERNEL_IMG}"
fi

if [[ "${STARRY_CI_UNAME_LINUX}" != "0" ]]; then
  uname_src="${XKERNEL_ROOT}/api/kapi/src/syscall/sys.rs"
  if [[ -f "${uname_src}" ]]; then
    log "Patching uname for UnixBench compatibility: ${uname_src}"
    python3 - "${uname_src}" <<'PY'
import re
import sys

path = sys.argv[1]
data = open(path, "r", encoding="utf-8", errors="ignore").read()
data = re.sub(r'const VERSION: &str = .*?;', 'const VERSION: &str = "6.6.0";', data)
data = re.sub(r'sysname:\s*pad_str\(".*?"\)', 'sysname: pad_str("Linux")', data)
open(path, "w", encoding="utf-8").write(data)
PY
  fi
fi

if ! command -v rustup >/dev/null 2>&1; then
  log "rustup not found, please install Rust toolchains before running build"
  exit 1
fi
if [[ -n "${XKERNEL_TOOLCHAIN:-}" ]]; then
  export RUSTUP_TOOLCHAIN="${XKERNEL_TOOLCHAIN}"
  log "Using override toolchain ${RUSTUP_TOOLCHAIN}"
fi
log "Rust toolchain will follow ${XKERNEL_ROOT}/rust-toolchain.toml (auto-managed by rustup)"
ACTIVE_TOOLCHAIN="$(rustup show active-toolchain 2>/dev/null | tr -d '\r')"
if [[ -n "${ACTIVE_TOOLCHAIN}" ]]; then
  log "Active toolchain: ${ACTIVE_TOOLCHAIN}"
fi

pushd "${XKERNEL_ROOT}" >/dev/null
if [[ "${XKERNEL_CARGO_UPDATE}" == "1" ]]; then
  log "Running cargo update in ${XKERNEL_ROOT}"
  cargo update
fi

log "Building X-Kernel (ARCH=${ARCH})"
PLATFORM_DEFCONFIG="platforms/${ARCH}-qemu-virt/defconfig"
if [[ -f "${PLATFORM_DEFCONFIG}" ]]; then
  log "Loading platform defconfig: ${PLATFORM_DEFCONFIG}"
  cp "${PLATFORM_DEFCONFIG}" .config
else
  log "WARNING: ${PLATFORM_DEFCONFIG} not found, falling back to make defconfig"
  make defconfig
fi
make ${UNITTEST:+UNITTEST=y} build
popd >/dev/null

log "Copying build artifacts"
shopt -s nullglob
for artifact in "${XKERNEL_ROOT}"/X-Kernel_"${ARCH}"*-qemu-virt.*; do
  cp "${artifact}" "${ARTIFACT_DIR}/"
  log "  -> $(basename "${artifact}")"
done
shopt -u nullglob

cat >"${ARTIFACT_DIR}/build.info" <<EOF
suite=${SUITE}
arch=${ARCH}
stamp=$(date -u +%Y%m%d-%H%M%S)
xkernel_remote=${XKERNEL_REMOTE}
xkernel_ref=${XKERNEL_REF:-}
xkernel_root=${XKERNEL_ROOT}
xkernel_commit=${XKERNEL_COMMIT}
EOF

log "X-Kernel 构建完成，产物位于 ${ARTIFACT_DIR}"
