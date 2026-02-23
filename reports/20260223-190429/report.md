# StarryOS Daily Test Report

**运行时间**: 2026-02-23T17:10:04.354808782Z → 2026-02-23T19:04:29.228237170Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 11/13
- ❌ **失败**: 2/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 84.6%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.65s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 335.75s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2408488.50 | 206.40 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6380727.70 | 546.80 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 370.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 350.80 | 63.80 |
  | Double-Precision Whetstone | 4 | 55.00 | 1016.20 | 184.80 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.80s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28253.40 | 18.80 |
  | System Call Overhead | 4 | 15000.00 | 33113.50 | 22.10 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19037.10 | 15.30 |
  | Pipe Throughput | 4 | 12440.00 | 40546.40 | 32.60 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3096.10 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3999.70 | 10.00 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 234.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 121.40 | 9.60 |
  | Process Creation | 4 | 126.00 | 250.10 | 19.80 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 855.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2340.30 | 5.90 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 6444.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3389.40 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 2817.00 | 7.10 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 8703.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5675.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 851.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1097.10 | 6.60 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4771.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2955.40 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2404.60 | 14.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6927.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4221.50 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 930.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 2435.60 | 4.20 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 12551.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 6064.40 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3550.70 | 6.10 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 8292.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 4925.20 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.05s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 11.00 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 15.40 | 3.60 |


### ❌ unixbench-shell1-test

- **状态**: `fail`
- **耗时**: 1009.46s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.35s
- **错误信息**: [xkernel-ci] ERROR: command timed out
