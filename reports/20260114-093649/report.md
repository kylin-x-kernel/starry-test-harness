# StarryOS Daily Test Report

**运行时间**: 2026-01-14T07:52:29.546299197Z → 2026-01-14T09:36:49.099559939Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.24s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 339.56s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2404662.90 | 206.10 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6160659.50 | 527.90 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 373.47s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 350.50 | 63.70 |
  | Double-Precision Whetstone | 4 | 55.00 | 909.60 | 165.40 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 331.65s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28343.70 | 18.90 |
  | System Call Overhead | 4 | 15000.00 | 36265.90 | 24.20 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.68s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 18861.70 | 15.20 |
  | Pipe Throughput | 4 | 12440.00 | 47137.00 | 37.90 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3433.40 | 8.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4055.90 | 10.10 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 236.33s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 121.20 | 9.60 |
  | Process Creation | 4 | 126.00 | 251.90 | 20.00 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 853.56s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2825.40 | 7.10 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 7827.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3504.90 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3748.20 | 9.50 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 11113.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5645.90 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 850.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1176.80 | 7.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4826.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3372.40 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2397.10 | 14.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6234.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3626.20 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 920.55s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3064.30 | 5.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10791.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4575.20 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3837.20 | 6.60 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14263.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5400.10 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 16.80 | 3.90 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 428.74s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.40 | 5.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 30.50 | 7.20 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.32s
- **错误信息**: [starry-ci] ERROR: command timed out
