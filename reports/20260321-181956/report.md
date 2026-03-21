# StarryOS Daily Test Report

**运行时间**: 2026-03-21T16:41:40.667412755Z → 2026-03-21T18:19:56.090206680Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 27.40s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 339.71s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2411416.10 | 206.60 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5698076.90 | 488.30 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 373.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 353.90 | 64.30 |
  | Double-Precision Whetstone | 4 | 55.00 | 910.30 | 165.50 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.85s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27346.40 | 18.20 |
  | System Call Overhead | 4 | 15000.00 | 33935.00 | 22.60 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19713.30 | 15.80 |
  | Pipe Throughput | 4 | 12440.00 | 45130.70 | 36.30 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 330.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3020.60 | 7.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3923.00 | 9.80 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 237.48s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 117.50 | 9.30 |
  | Process Creation | 4 | 126.00 | 236.80 | 18.80 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 854.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2989.80 | 7.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 7667.70 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4324.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3344.80 | 8.40 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12695.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6228.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 849.65s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1857.80 | 11.20 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4726.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2666.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2825.90 | 17.10 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 8154.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4432.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 908.86s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5405.50 | 9.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10904.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4502.70 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3957.00 | 6.80 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13736.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5531.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 17.10 | 4.00 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 433.86s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.00 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 30.20 | 7.10 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 573.09s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.10 | 6.80 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.80 | 4.70 |

