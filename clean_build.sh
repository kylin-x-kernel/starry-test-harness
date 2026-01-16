#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2025 Weikang Guo <guoweikang.kernel@gmail.com>
# Copyright (C) 2025 KylinSoft Co., Ltd. <https://www.kylinos.cn/>
# See LICENSE for license details.
# 
# This file has been modified by KylinSoft on 2025.

# Driver for the Arm Generic Interrupt Controller version 3 (or 4).

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="${SCRIPT_DIR}"

info() {
  printf '[clean-build] %s\n' "$1"
}

remove_path() {
  local target="$1"
  if [[ -e "${target}" ]]; then
    info "removing ${target#${REPO_ROOT}/}"
    rm -rf -- "${target}"
  fi
}

# primary build output directories
remove_path "${REPO_ROOT}/target"
remove_path "${REPO_ROOT}/build"
remove_path "${REPO_ROOT}/artifacts"
remove_path "${REPO_ROOT}/.cache/StarryOS"

# per-case build caches and artifacts
while IFS= read -r -d '' dir; do
  remove_path "${dir}"
done < <(find "${REPO_ROOT}/tests" -type d \( -name target -o -name artifacts \) -print0)

info "build artifacts cleaned"
