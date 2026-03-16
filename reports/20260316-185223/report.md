# StarryOS Daily Test Report

**运行时间**: 2026-03-16T17:15:16.510224935Z → 2026-03-16T18:52:23.453649997Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.56s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 336.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2442797.90 | 209.30 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 7045988.80 | 603.80 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 370.62s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.50 | 64.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 1005.80 | 182.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 327.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28643.00 | 19.10 |
  | System Call Overhead | 4 | 15000.00 | 31524.50 | 21.00 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19884.90 | 16.00 |
  | Pipe Throughput | 4 | 12440.00 | 39805.40 | 32.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.83s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3029.30 | 7.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4418.40 | 11.00 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.25s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 120.00 | 9.50 |
  | Process Creation | 4 | 126.00 | 244.90 | 19.40 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 848.94s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2599.90 | 6.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8045.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4383.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3866.70 | 9.80 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12837.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6125.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 844.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1564.50 | 9.50 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4154.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2765.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2746.50 | 16.60 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 8098.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4535.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 895.54s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3864.60 | 6.70 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 12323.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5574.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3229.50 | 5.60 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14349.80 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5489.30 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.99s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 20.60 | 4.80 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 434.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.00 | 5.20 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.10 | 8.10 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 542.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.60 | 7.60 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.20 | 5.30 |

