#!/usr/bin/env bash
# Build script for host-side companion programs
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE="$(cd "${SCRIPT_DIR}/../.." && pwd)"
TARGET_DIR="${WORKSPACE}/target/host-companions"

echo "[host-companions] Building host-side companion programs..."
echo "[host-companions] Target directory: ${TARGET_DIR}"

# Detect host architecture
HOST_ARCH="$(uname -m)"
if [[ "${HOST_ARCH}" == "x86_64" ]]; then
    RUST_TARGET="x86_64-unknown-linux-gnu"
elif [[ "${HOST_ARCH}" == "aarch64" ]]; then
    RUST_TARGET="aarch64-unknown-linux-gnu"
else
    echo "[host-companions] Unsupported host architecture: ${HOST_ARCH}" >&2
    exit 1
fi

echo "[host-companions] Host architecture: ${HOST_ARCH} (${RUST_TARGET})"

# Build all companion programs
for companion_dir in "${SCRIPT_DIR}"/*/ ; do
    if [[ ! -f "${companion_dir}/Cargo.toml" ]]; then
        continue
    fi
    
    companion_name="$(basename "${companion_dir}")"
    echo "[host-companions] Building ${companion_name}..."
    
    cargo build \
        --manifest-path "${companion_dir}/Cargo.toml" \
        --release \
        --target "${RUST_TARGET}" \
        --target-dir "${TARGET_DIR}"
    
    # Copy binary to a well-known location
    output_bin="${TARGET_DIR}/${RUST_TARGET}/release/${companion_name}"
    if [[ -f "${output_bin}" ]]; then
        mkdir -p "${WORKSPACE}/artifacts/host-companions"
        cp "${output_bin}" "${WORKSPACE}/artifacts/host-companions/${companion_name}"
        echo "[host-companions] ✓ ${companion_name} -> artifacts/host-companions/${companion_name}"
    else
        echo "[host-companions] ✗ Failed to build ${companion_name}" >&2
        exit 1
    fi
done

echo "[host-companions] All companion programs built successfully"

