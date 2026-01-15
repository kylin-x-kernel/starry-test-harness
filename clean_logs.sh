#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2025 Weikang Guo <guoweikang.kernel@gmail.com>
# Copyright (C) 2025 KylinSoft Co., Ltd. <https://www.kylinos.cn/>
# See LICENSE for license details.
#
# This file has been modified by KylinSoft on 2025.
#
# Driver for the Arm Generic Interrupt Controller version 3 (or 4).

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LOG_ROOT="${SCRIPT_DIR}/logs"

if [[ ! -d "${LOG_ROOT}" ]]; then
  printf '[clean-logs] nothing to clean (logs directory missing)\n'
  exit 0
fi

find "${LOG_ROOT}" -mindepth 1 \
  ! -name '.gitkeep' \
  -exec rm -rf -- {} +

printf '[clean-logs] log directories cleaned\n'
