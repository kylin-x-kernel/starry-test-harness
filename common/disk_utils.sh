#!/usr/bin/env bash
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

prepare_disk_from_template() {
    local template="$1"
    local target="$2"
    local label="${3:-disk}"
    
    if [[ ! -f "${template}" ]]; then
        echo "[${label}] rootfs template not found: ${template}" >&2
        return 1
    fi
    
    echo "[${label}] creating fresh disk image from template" >&2
    mkdir -p "$(dirname "${target}")"
    
    if ! cp "${template}" "${target}"; then
        if ! sudo cp "${template}" "${target}"; then
            echo "[${label}] failed to copy rootfs template" >&2
            return 1
        fi
    fi
    
    if ! chmod 666 "${target}"; then
        if ! sudo chmod 666 "${target}"; then
            echo "[${label}] failed to adjust permissions" >&2
            return 1
        fi
    fi
    
    return 0
}

inject_binary_to_disk() {
    local binary="$1"
    local dest_path="$2"
    local disk_image="$3"
    local label="${4:-disk}"
    
    if [[ ! -f "${binary}" ]]; then
        echo "[${label}] binary not found: ${binary}" >&2
        return 1
    fi
    
    if [[ ! -f "${disk_image}" ]]; then
        echo "[${label}] disk image not found: ${disk_image}" >&2
        return 1
    fi
    
    local debugfs_cmd="debugfs"
    if [[ ! -w "${disk_image}" ]]; then
        debugfs_cmd="sudo debugfs"
    fi
    
    local dest_dir=$(dirname "${dest_path}")
    local dest_filename=$(basename "${dest_path}")
    
    IFS='/' read -ra dest_segments <<< "${dest_dir}"
    local current=""
    for segment in "${dest_segments[@]}"; do
        [[ -z "${segment}" ]] && continue
        current+="/${segment}"
        ${debugfs_cmd} -w "${disk_image}" -R "mkdir ${current}" >/dev/null 2>&1 || true
    done
    
    if ! ${debugfs_cmd} -w "${disk_image}" << EOF
cd ${dest_dir}
rm ${dest_filename}
write ${binary} ${dest_filename}
quit
EOF
    then
        echo "[${label}] failed to write binary to disk image" >&2
        return 1
    fi
    
    echo "[${label}] injected ${dest_filename} to disk image" >&2
    return 0
}

mount_disk_image() {
    local disk_image="$1"
    local mount_point="$2"
    local label="${3:-disk}"
    
    if ! mount -o loop "${disk_image}" "${mount_point}" 2>/dev/null; then
        if ! sudo mount -o loop "${disk_image}" "${mount_point}"; then
            echo "[${label}] failed to mount disk image" >&2
            return 1
        fi
        echo "1"
    else
        echo "0"
    fi
}

umount_disk_image() {
    local mount_point="$1"
    local use_sudo="${2:-0}"
    
    if [[ "${use_sudo}" == "1" ]]; then
        sudo umount "${mount_point}"
    else
        umount "${mount_point}"
    fi
}
