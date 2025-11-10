#!/usr/bin/env bash
set -euo pipefail

WORKSPACE="$(pwd)"
CI_ROOT="${WORKSPACE}/tests/ci"
TARGET_DIR="${WORKSPACE}/target/ci-rust"
OUTPUT_DIR="${WORKSPACE}/build/ci-binaries"

mkdir -p "${OUTPUT_DIR}"
export CARGO_TARGET_DIR="${TARGET_DIR}"

shopt -s nullglob
crate_dirs=()
for dir in "${CI_ROOT}"/*/; do
  name=$(basename "${dir%/}")
  if [[ "${name}" == "test-utils" ]]; then
    continue
  fi
  if [[ -f "${dir}/Cargo.toml" ]]; then
    crate_dirs+=("${dir%/}")
  fi
done
shopt -u nullglob

if [[ ${#crate_dirs[@]} -eq 0 ]]; then
  echo "[error] 未在 ${CI_ROOT} 下找到任何测试用例工程" >&2
  exit 1
fi

echo "[info] 发现 ${#crate_dirs[@]} 个测试用例，开始编译" >&2

status=0
for crate_dir in "${crate_dirs[@]}"; do
  manifest="${crate_dir}/Cargo.toml"
  crate_name=$(sed -n 's/^name[[:space:]]*=[[:space:]]*"\(.*\)"/\1/p' "${manifest}" | head -n 1)
  if [[ -z "${crate_name}" ]]; then
    echo "[warn] 无法解析 ${manifest} 中的包名，跳过" >&2
    continue
  fi

  binary_name=${crate_name//-/_}
  host_bin="${TARGET_DIR}/release/${binary_name}"

  echo "[info] 编译 ${crate_name}" >&2
  if ! cargo build --manifest-path "${manifest}" --release; then
    echo "[error] 编译 ${crate_name} 失败" >&2
    status=1
    continue
  fi

  if [[ ! -x "${host_bin}" ]]; then
    echo "[error] 编译后未找到可执行文件 ${host_bin}" >&2
    status=1
    continue
  fi

  output_binary="${OUTPUT_DIR}/${binary_name}"
  cp "${host_bin}" "${output_binary}"
  echo "[info] ${crate_name} -> ${output_binary}" >&2
done

echo "[info] 编译完成，所有二进制文件已复制到 ${OUTPUT_DIR}" >&2
ls -lh "${OUTPUT_DIR}"

exit ${status}
