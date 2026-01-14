# StarryOS Daily Test Report

**运行时间**: 2026-01-14T16:42:47.779941207Z → 2026-01-14T18:25:59.044088651Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.88s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 338.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2412340.10 | 206.70 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6426692.40 | 550.70 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 375.28s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 348.40 | 63.30 |
  | Double-Precision Whetstone | 4 | 55.00 | 855.30 | 155.50 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 331.08s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28401.10 | 18.90 |
  | System Call Overhead | 4 | 15000.00 | 34447.20 | 23.00 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 334.25s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 18376.60 | 14.80 |
  | Pipe Throughput | 4 | 12440.00 | 37571.30 | 30.20 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 331.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3112.30 | 7.80 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3794.00 | 9.50 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 237.62s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 111.20 | 8.80 |
  | Process Creation | 4 | 126.00 | 242.50 | 19.20 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 855.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3403.40 | 8.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 7529.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5597.40 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3898.90 | 9.80 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12033.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6053.80 | --- |


### ❌ unixbench-fsbuffer-test

- **状态**: `fail`
- **耗时**: 1208.98s
- **错误信息**: [starry-ci] ERROR: command timed out

### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 914.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 2971.20 | 5.10 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10879.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3952.80 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3178.70 | 5.50 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 12103.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 4961.90 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.40 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 15.30 | 3.60 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 435.10s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.60 | 5.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.40 | 7.40 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 574.76s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.20 | 6.90 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.20 | 3.70 |

