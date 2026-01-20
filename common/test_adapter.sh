#!/bin/sh
# StarryOS Test Harness - Test Adapter Interface
# 定义测试模块的标准接口

# ==================== 测试模块接口 ====================
# 每个测试模块必须实现以下函数

# 获取模块信息
# 返回: JSON 格式的模块信息
# Usage: test_module_info
test_module_info() {
    cat <<EOF
{
  "name": "unknown",
  "type": "unknown",
  "version": "1.0",
  "description": "No description provided"
}
EOF
}

# 运行测试模块
# 参数: $1 - 模块配置（JSON 或路径）
# 返回: 0 成功, 非0 失败
# Usage: test_module_run <config>
test_module_run() {
    local config="$1"
    echo "test_module_run not implemented" >&2
    return 1
}

# 清理测试模块
# 参数: 无
# 返回: 0 成功, 非0 失败
# Usage: test_module_cleanup
test_module_cleanup() {
    # 默认实现：什么都不做
    return 0
}

# ==================== 辅助函数 ====================

# 验证模块是否实现了必需接口
# Usage: validate_test_module
validate_test_module() {
    local errors=0
    
    # 检查 test_module_run 是否被覆盖
    if type test_module_run | grep -q "not implemented"; then
        echo "Error: test_module_run not implemented" >&2
        errors=$((errors + 1))
    fi
    
    return $errors
}

# 加载测试模块
# Usage: load_test_module <module_script>
load_test_module() {
    local module_script="$1"
    
    if [ ! -f "$module_script" ]; then
        echo "Error: Module script not found: $module_script" >&2
        return 1
    fi
    
    # Source 模块脚本
    . "$module_script"
    
    # 验证接口
    validate_test_module
}

# ==================== 测试结果报告 ====================

# 测试结果结构
# Usage: create_test_result <name> <status> <duration> [message]
create_test_result() {
    local name="$1"
    local status="$2"
    local duration="$3"
    local message="${4:-}"
    
    cat <<EOF
{
  "name": "$name",
  "status": "$status",
  "duration": $duration,
  "message": "$message"
}
EOF
}

# 解析测试输出
# Usage: parse_test_output <log_file>
parse_test_output() {
    local log_file="$1"
    
    if [ ! -f "$log_file" ]; then
        return 1
    fi
    
    # 提取关键信息
    local total=$(grep -oE "^Total:.*[0-9]+" "$log_file" | grep -oE "[0-9]+" || echo "0")
    local passed=$(grep -oE "^Passed:.*[0-9]+" "$log_file" | grep -oE "[0-9]+" || echo "0")
    local failed=$(grep -oE "^Failed:.*[0-9]+" "$log_file" | grep -oE "[0-9]+" || echo "0")
    local skipped=$(grep -oE "^Skipped:.*[0-9]+" "$log_file" | grep -oE "[0-9]+" || echo "0")
    
    cat <<EOF
{
  "total": $total,
  "passed": $passed,
  "failed": $failed,
  "skipped": $skipped
}
EOF
}
