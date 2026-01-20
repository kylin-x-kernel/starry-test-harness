#!/bin/sh
# StarryOS Test Harness - Logging Utilities
# 统一的日志格式化工具

# 颜色定义（如果终端支持）
if [ -t 1 ]; then
    RED='\033[0;31m'
    GREEN='\033[0;32m'
    YELLOW='\033[1;33m'
    BLUE='\033[0;34m'
    CYAN='\033[0;36m'
    NC='\033[0m'
else
    RED=''
    GREEN=''
    YELLOW=''
    BLUE=''
    CYAN=''
    NC=''
fi

# 日志级别
LOG_LEVEL_DEBUG=0
LOG_LEVEL_INFO=1
LOG_LEVEL_WARN=2
LOG_LEVEL_ERROR=3

# 默认日志级别
LOG_LEVEL=${LOG_LEVEL:-$LOG_LEVEL_INFO}

# ==================== 基础日志函数 ====================

# 调试日志
# Usage: log_debug <message>
log_debug() {
    if [ "$LOG_LEVEL" -le "$LOG_LEVEL_DEBUG" ]; then
        echo -e "${CYAN}[DEBUG]${NC} $*" >&2
    fi
}

# 信息日志
# Usage: log_info <message>
log_info() {
    if [ "$LOG_LEVEL" -le "$LOG_LEVEL_INFO" ]; then
        echo -e "${BLUE}[INFO]${NC} $*"
    fi
}

# 警告日志
# Usage: log_warn <message>
log_warn() {
    if [ "$LOG_LEVEL" -le "$LOG_LEVEL_WARN" ]; then
        echo -e "${YELLOW}[WARN]${NC} $*" >&2
    fi
}

# 错误日志
# Usage: log_error <message>
log_error() {
    if [ "$LOG_LEVEL" -le "$LOG_LEVEL_ERROR" ]; then
        echo -e "${RED}[ERROR]${NC} $*" >&2
    fi
}

# 成功日志
# Usage: log_success <message>
log_success() {
    echo -e "${GREEN}[OK]${NC} $*"
}

# ==================== 测试结果日志 ====================

# 测试开始
# Usage: log_test_start <test_name>
log_test_start() {
    local test_name="$1"
    echo -e "Running: ${CYAN}${test_name}${NC}"
}

# 测试通过
# Usage: log_test_pass <test_name> [details]
log_test_pass() {
    local test_name="$1"
    local details="${2:-}"
    
    if [ -n "$details" ]; then
        echo -e "  ${GREEN}✓ PASS${NC} ($details)"
    else
        echo -e "  ${GREEN}✓ PASS${NC}"
    fi
}

# 测试失败
# Usage: log_test_fail <test_name> [details]
log_test_fail() {
    local test_name="$1"
    local details="${2:-}"
    
    if [ -n "$details" ]; then
        echo -e "  ${RED}✗ FAIL${NC} ($details)"
    else
        echo -e "  ${RED}✗ FAIL${NC}"
    fi
}

# 测试跳过
# Usage: log_test_skip <test_name> [reason]
log_test_skip() {
    local test_name="$1"
    local reason="${2:-unknown reason}"
    echo -e "  ${YELLOW}○ SKIP${NC} ($reason)"
}

# ==================== 格式化输出 ====================

# 打印分隔线
# Usage: log_separator [char] [length]
log_separator() {
    local char="${1:-=}"
    local length="${2:-50}"
    printf '%*s\n' "$length" | tr ' ' "$char"
}

# 打印标题
# Usage: log_header <title>
log_header() {
    local title="$1"
    echo ""
    log_separator "="
    echo "$title"
    log_separator "="
}

# 打印子标题
# Usage: log_subheader <subtitle>
log_subheader() {
    local subtitle="$1"
    echo ""
    echo "$subtitle"
    log_separator "-"
}

# 缩进输出
# Usage: log_indent <level> <message>
log_indent() {
    local level="${1:-1}"
    shift
    local indent=""
    for i in $(seq 1 $level); do
        indent="  $indent"
    done
    echo "${indent}$*"
}

# ==================== 统计输出 ====================

# 打印测试摘要
# Usage: log_summary <total> <passed> <failed> <skipped>
log_summary() {
    local total="$1"
    local passed="$2"
    local failed="$3"
    local skipped="${4:-0}"
    
    echo ""
    log_separator "="
    echo "Test Results Summary"
    log_separator "="
    echo "Total:   $total"
    echo -e "Passed:  ${GREEN}$passed${NC}"
    echo -e "Failed:  ${RED}$failed${NC}"
    if [ "$skipped" -gt 0 ]; then
        echo -e "Skipped: ${YELLOW}$skipped${NC}"
    fi
    log_separator "="
}
