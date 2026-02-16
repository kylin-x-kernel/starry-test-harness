# StarryOS Daily Test Report

**运行时间**: 2026-02-16T16:57:42.472146831Z → 2026-02-16T18:34:29.128429503Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.28s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 336.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2438250.80 | 208.90 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5819648.30 | 498.70 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 369.02s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.20 | 64.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 1022.30 | 185.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 328.08s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 26549.20 | 17.70 |
  | System Call Overhead | 4 | 15000.00 | 32090.50 | 21.40 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 328.51s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19542.00 | 15.70 |
  | Pipe Throughput | 4 | 12440.00 | 44564.70 | 35.80 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 326.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2989.50 | 7.50 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4123.10 | 10.30 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 233.90s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 120.40 | 9.60 |
  | Process Creation | 4 | 126.00 | 245.40 | 19.50 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 851.32s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2519.50 | 6.40 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 6718.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3637.30 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3926.80 | 9.90 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12670.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6146.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 849.30s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1373.00 | 8.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4423.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2090.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2394.90 | 14.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7583.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4499.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 907.25s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5395.40 | 9.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11313.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4607.80 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3147.50 | 5.40 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14097.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5723.70 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 17.70 | 4.10 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 430.14s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.60 | 5.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 33.30 | 7.90 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 568.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.30 | 7.20 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.60 | 4.40 |

