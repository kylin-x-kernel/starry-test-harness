# StarryOS Daily Test Report

**运行时间**: 2026-04-12T16:52:58.349242408Z → 2026-04-12T18:35:19.960781935Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 25.80s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 330.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2523865.00 | 216.30 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6066928.60 | 519.90 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 366.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 335.30 | 61.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 804.80 | 146.30 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 324.37s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 32640.20 | 21.80 |
  | System Call Overhead | 4 | 15000.00 | 38280.90 | 25.50 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 323.80s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 22710.10 | 18.30 |
  | Pipe Throughput | 4 | 12440.00 | 50378.60 | 40.50 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 321.74s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3563.80 | 8.90 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4697.30 | 11.70 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 232.79s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 127.80 | 10.10 |
  | Process Creation | 4 | 126.00 | 259.00 | 20.60 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 842.22s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2920.00 | 7.40 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8188.70 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5348.60 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4793.30 | 12.10 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 14908.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7422.90 | --- |


### ❌ unixbench-fsbuffer-test

- **状态**: `fail`
- **耗时**: 1209.38s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 878.67s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5605.50 | 9.70 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 14655.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 6219.20 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4570.60 | 7.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 16333.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6836.30 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 230.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 11.70 | 2.70 |
  | Execl Throughput | 4 | 43.00 | 19.90 | 4.60 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 428.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 24.30 | 5.70 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 37.90 | 8.90 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 557.89s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.10 | 8.50 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.30 | 5.50 |

