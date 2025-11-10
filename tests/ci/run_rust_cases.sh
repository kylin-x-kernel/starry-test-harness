#!/usr/bin/env bash
set -euo pipefail

WORKSPACE="$(pwd)"
CI_ROOT="${WORKSPACE}/tests/ci"
TARGET_DIR="${WORKSPACE}/target/ci-rust"
OUTPUT_DIR="${WORKSPACE}/build/ci-binaries"
TARGET_TRIPLE="${CROSS_TARGET:-aarch64-unknown-linux-musl}"

mkdir -p "${OUTPUT_DIR}"
export CARGO_TARGET_DIR="${TARGET_DIR}"

# 确保目标已安装
if ! rustup target list --installed | grep -q "^${TARGET_TRIPLE}$"; then
  echo "[info] 安装交叉编译目标 ${TARGET_TRIPLE}" >&2
  rustup target add "${TARGET_TRIPLE}"
fi

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

echo "[info] 发现 ${#crate_dirs[@]} 个测试用例，开始交叉编译 (${TARGET_TRIPLE})" >&2

status=0
for crate_dir in "${crate_dirs[@]}"; do
  manifest="${crate_dir}/Cargo.toml"
  crate_name=$(sed -n 's/^name[[:space:]]*=[[:space:]]*"\(.*\)"/\1/p' "${manifest}" | head -n 1)
  if [[ -z "${crate_name}" ]]; then
    echo "[warn] 无法解析 ${manifest} 中的包名，跳过" >&2
    continue
  fi

  # Cargo 对于二进制文件名，会保持包名的连字符不变
  binary_name="${crate_name}"
  target_bin="${TARGET_DIR}/${TARGET_TRIPLE}/release/${binary_name}"

  echo "[info] 编译 ${crate_name} (${TARGET_TRIPLE})" >&2
  if ! cargo build --manifest-path "${manifest}" --release --target "${TARGET_TRIPLE}"; then
    echo "[error] 编译 ${crate_name} 失败" >&2
    status=1
    continue
  fi

  if [[ ! -x "${target_bin}" ]]; then
    echo "[error] 编译后未找到可执行文件 ${target_bin}" >&2
    status=1
    continue
  fi

  # 输出时转换为下划线，便于后续脚本处理
  output_binary="${OUTPUT_DIR}/${binary_name//-/_}"
  cp "${target_bin}" "${output_binary}"
  echo "[info] ${crate_name} -> ${output_binary}" >&2
done

echo "[info] 交叉编译完成，所有 ${TARGET_TRIPLE} 二进制文件已复制到 ${OUTPUT_DIR}" >&2
ls -lh "${OUTPUT_DIR}"

exit ${status}
