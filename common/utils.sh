#!/bin/sh
# StarryOS Test Harness - Common Utilities
# BusyBox 兼容的工具函数库

# ==================== 文件操作工具 ====================

# BusyBox 兼容的 head 命令
# Usage: safe_head <lines> <file>
safe_head() {
    local lines="${1:-10}"
    local file="$2"
    
    if [ -z "$file" ]; then
        head -n "$lines" 2>/dev/null || true
    else
        head -n "$lines" "$file" 2>/dev/null || true
    fi
}

# BusyBox 兼容的 tail 命令
# Usage: safe_tail <lines> <file>
safe_tail() {
    local lines="${1:-10}"
    local file="$2"
    
    if [ -z "$file" ]; then
        tail -n "$lines" 2>/dev/null || true
    else
        tail -n "$lines" "$file" 2>/dev/null || true
    fi
}

# 安全的文件读取
# Usage: safe_cat <file>
safe_cat() {
    local file="$1"
    if [ -f "$file" ]; then
        cat "$file" 2>/dev/null || true
    fi
}

# ==================== 路径工具 ====================

# 获取脚本所在目录
# Usage: get_script_dir
get_script_dir() {
    dirname "$(readlink -f "$0" 2>/dev/null || realpath "$0" 2>/dev/null || echo "$0")"
}

# 规范化路径
# Usage: normalize_path <path>
normalize_path() {
    local path="$1"
    # 移除尾部斜杠
    echo "${path%/}"
}

# ==================== 字符串工具 ====================

# 去除字符串首尾空白
# Usage: trim <string>
trim() {
    local var="$*"
    # 去除首部空白
    var="${var#"${var%%[![:space:]]*}"}"
    # 去除尾部空白
    var="${var%"${var##*[![:space:]]}"}"
    echo "$var"
}

# 检查字符串是否为空
# Usage: is_empty <string>
is_empty() {
    [ -z "$(trim "$1")" ]
}

# ==================== 进程工具 ====================

# 安全执行命令并捕获输出
# Usage: safe_exec <command> [args...]
safe_exec() {
    "$@" 2>&1 || true
}

# 执行命令并检查返回码
# Usage: exec_check <command> [args...]
exec_check() {
    "$@"
    return $?
}

# ==================== 兼容性工具 ====================

# 检查命令是否存在
# Usage: command_exists <command>
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# 获取可用的 sed
# Usage: get_sed
get_sed() {
    if command_exists gsed; then
        echo "gsed"
    else
        echo "sed"
    fi
}

# 获取可用的 awk
# Usage: get_awk
get_awk() {
    if command_exists gawk; then
        echo "gawk"
    else
        echo "awk"
    fi
}
