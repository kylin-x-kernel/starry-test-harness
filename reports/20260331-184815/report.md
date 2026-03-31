# StarryOS Daily Test Report

**运行时间**: 2026-03-31T17:10:16.352630724Z → 2026-03-31T18:48:15.580333295Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.90s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 336.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2196426.70 | 188.20 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5927753.00 | 507.90 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 371.57s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 365.80 | 66.50 |
  | Double-Precision Whetstone | 4 | 55.00 | 865.40 | 157.30 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 327.80s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 26887.10 | 17.90 |
  | System Call Overhead | 4 | 15000.00 | 37642.30 | 25.10 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 327.97s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 16962.50 | 13.60 |
  | Pipe Throughput | 4 | 12440.00 | 38239.40 | 30.70 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 326.86s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2807.50 | 7.00 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3341.20 | 8.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 110.10 | 8.70 |
  | Process Creation | 4 | 126.00 | 235.60 | 18.70 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 845.69s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3673.50 | 9.30 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 11046.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5687.20 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4899.00 | 12.40 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 14908.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7648.70 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 839.08s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1841.10 | 11.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4587.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3283.80 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2922.50 | 17.70 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7294.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4708.20 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 881.86s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 6038.10 | 10.40 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 12368.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 7190.50 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4488.80 | 7.70 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 16478.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6705.30 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.75s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 9.50 | 2.20 |
  | Execl Throughput | 4 | 43.00 | 15.10 | 3.50 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 432.61s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.30 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 36.20 | 8.50 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 625.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.80 | 8.00 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.40 | 5.60 |

