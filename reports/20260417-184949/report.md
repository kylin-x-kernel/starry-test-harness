# StarryOS Daily Test Report

**运行时间**: 2026-04-17T17:02:50.398727101Z → 2026-04-17T18:49:49.091340059Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.54s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 337.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2426695.40 | 207.90 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6186860.60 | 530.20 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 373.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 346.50 | 63.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 1006.20 | 182.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 328.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27563.90 | 18.40 |
  | System Call Overhead | 4 | 15000.00 | 33170.70 | 22.10 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.05s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 20031.00 | 16.10 |
  | Pipe Throughput | 4 | 12440.00 | 47094.20 | 37.90 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3059.10 | 7.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3717.70 | 9.30 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 236.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 113.30 | 9.00 |
  | Process Creation | 4 | 126.00 | 229.20 | 18.20 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 850.47s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2605.40 | 6.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9132.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5057.40 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4010.50 | 10.10 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12505.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6257.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 847.98s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1507.00 | 9.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 5267.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3196.60 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2762.50 | 16.70 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7797.10 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3334.10 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 899.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4224.00 | 7.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 14144.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 7243.30 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4080.20 | 7.00 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 15431.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5715.40 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.57s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.40 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 18.80 | 4.40 |


### ❌ unixbench-shell1-test

- **状态**: `fail`
- **耗时**: 1008.81s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 546.59s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.50 | 7.50 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.90 | 4.80 |

