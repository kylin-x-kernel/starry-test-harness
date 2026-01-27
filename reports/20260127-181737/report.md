# StarryOS Daily Test Report

**运行时间**: 2026-01-27T16:41:10.442454775Z → 2026-01-27T18:17:37.554926922Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.06s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 338.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2426766.50 | 207.90 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5906500.10 | 506.10 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 369.01s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.80 | 64.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 968.80 | 176.10 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 328.62s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 33668.40 | 22.40 |
  | System Call Overhead | 4 | 15000.00 | 38571.80 | 25.70 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.37s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 21173.90 | 17.00 |
  | Pipe Throughput | 4 | 12440.00 | 45158.70 | 36.30 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3279.80 | 8.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4320.50 | 10.80 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.92s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 123.60 | 9.80 |
  | Process Creation | 4 | 126.00 | 256.40 | 20.40 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 853.90s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3520.60 | 8.90 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9416.70 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5473.80 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 2793.50 | 7.10 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 9340.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5934.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 853.80s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1336.90 | 8.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3504.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2915.90 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2411.60 | 14.60 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7274.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4316.80 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 914.67s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3891.40 | 6.70 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9757.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3282.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3960.90 | 6.80 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 10198.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5252.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 18.90 | 4.40 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 430.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.50 | 5.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.10 | 7.60 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 553.00s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.60 | 7.70 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.50 | 4.10 |

