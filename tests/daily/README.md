# Daily Test Suite - 指标收集和可视化功能

## 概述

Daily Test Suite 现在支持自动收集和展示测试指标数据，特别适用于性能测试（如 UnixBench）。

## 功能特性

### 1. 终端输出增强

测试完成后，除了显示通过/失败状态，还会在终端展示：
- **总体评分**：显示测试的总分（如 UnixBench Index: 125.50）
- **详细指标**：显示各项指标的得分（最多显示 5 项）
- **错误信息摘要**：测试失败时自动提取并显示关键错误信息
- **更多指标提示**：当指标超过 5 项时，提示查看 results.json

示例输出（成功）：
```
✓ PASSED (completed in 1.00s)
  UnixBench Index: 125.50
    Dhrystone 2: 125.50
    Whetstone: 124.00
    System Call Overhead: 123.30
```

示例输出（失败）：
```
✗ FAILED (completed in 191.37s)
  Error: Can't exec "/bin/sh": Bad address at ./Run line 649
```

### 2. JSON 输出增强

最终的 `last_run.json` 文件中，每个测试用例包含：

#### test_metrics 字段（性能指标）
- `score`: 总体评分（数值）
- `score_type`: 评分类型（字符串，如 "UnixBench Index"）
- `metrics`: 详细指标数组
  - `name`: 指标名称
  - `baseline`: 基准值（可选）
  - `result`: 测试结果
  - `index`: 索引值/得分（可选）
- `raw_data`: 原始 JSON 数据（完整保留用于后续分析）

#### error_summary 字段（错误摘要）
- 测试失败时自动提取关键错误信息
- 从 stderr、日志文件中智能识别错误
- 过滤掉调试信息，只保留关键错误
- 限制 200 字符以内，便于快速查看

## 如何使用

### 在测试脚本中生成指标数据

测试脚本需要在 `STARRY_CASE_ARTIFACT_DIR` 目录下生成 `results.json` 文件。

#### 标准格式

```json
{
  "status": "pass",
  "score_type": "评分类型名称",
  "score": 123.45,
  "metrics": [
    {
      "name": "指标1名称",
      "baseline": 100.0,
      "result": 123.45,
      "index": 123.45
    },
    {
      "name": "指标2名称",
      "result": 234.56
    }
  ]
}
```

#### UnixBench 示例

UnixBench 测试脚本已经自动生成标准格式的 `results.json`：

```bash
# 在 run_byte_unixbench.sh 中
RESULT_JSON="${CASE_ARTIFACT_DIR}/results.json"
python3 - "${LOG_SOURCE}" "${SUMMARY_FILE}" "${RESULT_JSON}" <<'PY'
# ... Python 脚本解析 UnixBench 输出并生成 JSON ...
PY
```

### 字段说明

- **必需字段**：
  - `score` 或 `metrics` 至少提供一个
  
- **可选字段**：
  - `status`: 测试状态（"pass", "fail" 等）
  - `score_type`: 评分类型描述
  - `metrics[].baseline`: 基准值
  - `metrics[].index`: 索引/相对得分

### 配置测试用例

在 `suite.toml` 中配置测试用例，指标收集功能会自动生效：

```toml
[[cases]]
name = "byte-unixbench"
description = "在 StarryOS 中运行 Byte UnixBench"
path = "tests/daily/cases/unixbench/run_byte_unixbench.sh"
args = ["dhry2reg", "whetstone-double", "syscall"]
timeout_secs = 3600
```

## 数据可视化

### 访问指标数据

所有指标数据保存在 `logs/daily/last_run.json` 中，可以使用任何 JSON 处理工具进行分析：

```bash
# 提取所有测试的评分
jq '.cases[] | {name: .name, score: .test_metrics.score}' logs/daily/last_run.json

# 提取特定测试的详细指标
jq '.cases[] | select(.name == "byte-unixbench") | .test_metrics.metrics' logs/daily/last_run.json
```

### 后续可视化方案

可以使用以下工具对数据进行可视化：
- **Grafana**: 配合时序数据库展示趋势
- **Python + Matplotlib/Plotly**: 生成静态图表
- **Web Dashboard**: 构建交互式仪表板

示例 Python 脚本：
```python
import json
import matplotlib.pyplot as plt

with open('logs/daily/last_run.json') as f:
    data = json.load(f)

for case in data['cases']:
    if case.get('test_metrics'):
        metrics = case['test_metrics']['metrics']
        names = [m['name'] for m in metrics]
        values = [m.get('index', m.get('result', 0)) for m in metrics]
        
        plt.figure(figsize=(10, 6))
        plt.bar(names, values)
        plt.title(f"{case['name']} - Metrics")
        plt.xticks(rotation=45, ha='right')
        plt.tight_layout()
        plt.savefig(f"{case['name']}_metrics.png")
```

## 与 CI Test 的区别

- **CI Test**: 保持原有简洁输出，不收集性能指标
- **Daily Test**: 增强的指标收集和展示功能，专注于长期性能监控

两个测试套件相互独立，修改互不影响。

## 故障排查

### 指标未显示

如果测试完成但没有显示指标：
1. 检查 `${STARRY_CASE_ARTIFACT_DIR}/results.json` 是否存在
2. 验证 JSON 格式是否正确：`jq . results.json`
3. 确认至少包含 `score` 或 `metrics` 字段

### JSON 格式错误

如果 JSON 解析失败，指标会被静默忽略，不影响测试结果判定。检查日志文件确认具体错误。

