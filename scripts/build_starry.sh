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

STARRYOS_REMOTE="${STARRYOS_REMOTE:-https://github.com/kylin-x-kernel/x-kernel.git}"
STARRYOS_COMMIT="${STARRYOS_REF:-${STARRYOS_COMMIT:-main}}"
STARRYOS_BRANCH="${STARRYOS_BRANCH:-local}"
STARRYOS_ROOT=${STARRYOS_ROOT:-${REPO_ROOT}/.cache/StarryOS}
STARRYOS_DEPTH=${STARRYOS_DEPTH:-0}
ARTIFACT_DIR="${REPO_ROOT}/artifacts/${SUITE}"
LOG_FILE="${ARTIFACT_DIR}/build.log"
STARRYOS_CARGO_UPDATE="${STARRYOS_CARGO_UPDATE:-1}"

if [[ "${STARRYOS_ROOT}" != /* ]]; then
  STARRYOS_ROOT="${REPO_ROOT}/${STARRYOS_ROOT}"
fi

mkdir -p "${ARTIFACT_DIR}" "$(dirname "${STARRYOS_ROOT}")"
: >"${LOG_FILE}"
exec > >(tee -a "${LOG_FILE}") 2>&1

log() {
  echo "[build:starry] $*"
}

clone_or_update_repo() {
  log "----------------------------------------"
  log "StarryOS Source Info"
  log "  path   : ${STARRYOS_ROOT}"
  
  if [[ ! -d "${STARRYOS_ROOT}/.git" ]]; then
    log "  remote : ${STARRYOS_REMOTE}"
    log "  branch : ${STARRYOS_BRANCH}"
    log "  ref    : ${STARRYOS_COMMIT}"
    log "Cloning StarryOS from ${STARRYOS_REMOTE}"
    git clone --recursive "${STARRYOS_REMOTE}" "${STARRYOS_ROOT}"
    log "Checking out ref ${STARRYOS_COMMIT}"
    git -C "${STARRYOS_ROOT}" checkout "${STARRYOS_COMMIT}"
  else
    log "Using existing StarryOS repo (pre-checked out by CI or previous run)"
    
    # 在 CI 环境中，代码已经被 actions/checkout 完整检出，无需 fetch/checkout
    # 在本地环境中，检查并更新到指定版本
    if [[ -z "${CI:-}" && -z "${GITHUB_ACTIONS:-}" ]]; then
      # 检查并修正 remote URL（防止本地缓存指向错误仓库）
      CURRENT_REMOTE=$(git -C "${STARRYOS_ROOT}" remote get-url origin 2>/dev/null || echo "")
      if [[ "${CURRENT_REMOTE}" != "${STARRYOS_REMOTE}" ]]; then
        log "Warning: local remote is ${CURRENT_REMOTE}, expected ${STARRYOS_REMOTE}"
        log "Updating remote URL to ${STARRYOS_REMOTE}"
        git -C "${STARRYOS_ROOT}" remote set-url origin "${STARRYOS_REMOTE}"
      fi
      
      log "Local environment detected, syncing to ref ${STARRYOS_COMMIT}"
      
      # 验证远程是否存在该分支
      if git -C "${STARRYOS_ROOT}" ls-remote --heads origin "${STARRYOS_COMMIT}" | grep -q "${STARRYOS_COMMIT}"; then
        log "Remote branch ${STARRYOS_COMMIT} found, fetching..."
        git -C "${STARRYOS_ROOT}" fetch origin "${STARRYOS_COMMIT}"
        git -C "${STARRYOS_ROOT}" checkout -B "${STARRYOS_COMMIT}" "origin/${STARRYOS_COMMIT}"
      elif git -C "${STARRYOS_ROOT}" ls-remote --tags origin "${STARRYOS_COMMIT}" | grep -q "${STARRYOS_COMMIT}"; then
        log "Remote tag ${STARRYOS_COMMIT} found, fetching..."
        git -C "${STARRYOS_ROOT}" fetch --tags origin
        git -C "${STARRYOS_ROOT}" checkout "${STARRYOS_COMMIT}"
      else
        log "Trying to checkout ${STARRYOS_COMMIT} as commit SHA..."
        git -C "${STARRYOS_ROOT}" fetch origin
        if ! git -C "${STARRYOS_ROOT}" checkout "${STARRYOS_COMMIT}"; then
          log "Error: cannot find or checkout ${STARRYOS_COMMIT}"
          log "Available remote branches:"
          git -C "${STARRYOS_ROOT}" ls-remote --heads origin | head -10
          exit 1
        fi
      fi
      git -C "${STARRYOS_ROOT}" submodule update --init --recursive
    else
      log "CI environment detected, skipping fetch (using pre-checked out code)"
    fi
  fi
  
  REAL_COMMIT=$(git -C "${STARRYOS_ROOT}" rev-parse HEAD)
  log "  commit : ${REAL_COMMIT}"
  log "----------------------------------------"
}

clone_or_update_repo

STARRYOS_COMMIT=$(git -C "${STARRYOS_ROOT}" rev-parse HEAD)
log "StarryOS commit: ${STARRYOS_COMMIT}"

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

# Copy rootfs template to StarryOS root for test scripts
STARRYOS_IMG="${STARRYOS_ROOT}/${IMG}"
if [[ ! -f "${STARRYOS_IMG}" ]] || [[ "${IMG_PATH}" -nt "${STARRYOS_IMG}" ]]; then
  log "Copying rootfs template to ${STARRYOS_IMG}"
  cp "${IMG_PATH}" "${STARRYOS_IMG}"
fi

if ! command -v rustup >/dev/null 2>&1; then
  log "rustup not found, please install Rust toolchains before running build"
  exit 1
fi
if [[ -n "${STARRYOS_TOOLCHAIN:-}" ]]; then
  export RUSTUP_TOOLCHAIN="${STARRYOS_TOOLCHAIN}"
  log "Using override toolchain ${RUSTUP_TOOLCHAIN}"
fi
log "Rust toolchain will follow ${STARRYOS_ROOT}/rust-toolchain.toml (auto-managed by rustup)"
ACTIVE_TOOLCHAIN="$(rustup show active-toolchain 2>/dev/null | tr -d '\r')"
if [[ -n "${ACTIVE_TOOLCHAIN}" ]]; then
  log "Active toolchain: ${ACTIVE_TOOLCHAIN}"
fi

pushd "${STARRYOS_ROOT}" >/dev/null
if [[ "${STARRYOS_CARGO_UPDATE}" == "1" ]]; then
  log "Running cargo update in ${STARRYOS_ROOT}"
  cargo update
fi

log "Building StarryOS (ARCH=${ARCH})"
log "Refreshing defconfig for ARCH=${ARCH}"
make ARCH="${ARCH}" defconfig
make ARCH="${ARCH}" build
if [[ -f "${STARRYOS_ROOT}/.platconfig.toml" ]]; then
  cp -f "${STARRYOS_ROOT}/.platconfig.toml" "${STARRYOS_ROOT}/.axconfig.toml"
fi
popd >/dev/null

log "Copying build artifacts"
shopt -s nullglob
for artifact in "${STARRYOS_ROOT}"/StarryOS_"${ARCH}"*-qemu-virt.*; do
  cp "${artifact}" "${ARTIFACT_DIR}/"
  log "  -> $(basename "${artifact}")"
done
shopt -u nullglob

cat >"${ARTIFACT_DIR}/build.info" <<META
suite=${SUITE}
arch=${ARCH}
stamp=$(date -u +%Y%m%d-%H%M%S)
starryos_remote=${STARRYOS_REMOTE}
starryos_ref=${STARRYOS_REF:-}
starryos_root=${STARRYOS_ROOT}
starryos_commit=${STARRYOS_COMMIT}
META

log "StarryOS 构建完成，产物位于 ${ARTIFACT_DIR}"
