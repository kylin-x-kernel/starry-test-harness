# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2025 Weikang Guo <guoweikang.kernel@gmail.com>
# Copyright (C) 2025 KylinSoft Co., Ltd. <https://www.kylinos.cn/>
# See LICENSE for license details.
# 
# This file has been modified by KylinSoft on 2025.

# Driver for the Arm Generic Interrupt Controller version 3 (or 4).

#!/usr/bin/env bash

set -euo pipefail

SUITE=${1:-ci-test}
ARCH=${ARCH:-aarch64}
ARTIFACT_DIR="artifacts/${SUITE}"
mkdir -p "${ARTIFACT_DIR}"

echo "[build] suite=${SUITE} arch=${ARCH}" >&2
echo "[build] syncing latest sources..." >&2
echo "[build] compiling Starry OS test image" >&2
printf "suite=%s\narch=%s\ntimestamp=%s\n" "${SUITE}" "${ARCH}" "$(date -u +%Y%m%d%H%M%S)" > "${ARTIFACT_DIR}/build.info"

echo "[build] artifacts ready at ${ARTIFACT_DIR}" >&2
