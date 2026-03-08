# StarryOS Daily Test Report

**运行时间**: 2026-03-08T16:40:59.958697420Z → 2026-03-08T18:19:11.045319619Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.00s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 341.07s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2197540.40 | 188.30 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5630230.60 | 482.50 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 372.88s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 366.40 | 66.60 |
  | Double-Precision Whetstone | 4 | 55.00 | 781.40 | 142.10 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 331.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 26602.60 | 17.70 |
  | System Call Overhead | 4 | 15000.00 | 35480.50 | 23.70 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 331.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 17043.90 | 13.70 |
  | Pipe Throughput | 4 | 12440.00 | 38441.50 | 30.90 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 331.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2672.60 | 6.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3538.90 | 8.80 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 237.06s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 109.70 | 8.70 |
  | Process Creation | 4 | 126.00 | 235.80 | 18.70 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 846.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3301.20 | 8.30 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 6887.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4035.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 5073.70 | 12.80 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 15328.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7798.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 845.95s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1776.60 | 10.70 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4201.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2927.90 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3096.80 | 18.70 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 8292.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5157.30 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 905.34s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5154.00 | 8.90 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 14128.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 7235.00 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3761.40 | 6.50 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13169.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 4589.30 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 235.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 9.40 | 2.20 |
  | Execl Throughput | 4 | 43.00 | 16.70 | 3.90 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 438.94s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.30 | 4.80 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 29.70 | 7.00 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 579.07s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.00 | 6.70 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.70 | 4.50 |

