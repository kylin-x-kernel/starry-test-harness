# StarryOS Daily Test Report

**运行时间**: 2026-03-17T17:14:48.353131746Z → 2026-03-17T18:53:08.006920511Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.32s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 341.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2426455.80 | 207.90 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5517329.00 | 472.80 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 371.41s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 354.70 | 64.50 |
  | Double-Precision Whetstone | 4 | 55.00 | 963.80 | 175.20 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28742.30 | 19.20 |
  | System Call Overhead | 4 | 15000.00 | 30799.80 | 20.50 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.34s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19780.70 | 15.90 |
  | Pipe Throughput | 4 | 12440.00 | 46518.30 | 37.40 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3086.00 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3964.40 | 9.90 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.56s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 119.60 | 9.50 |
  | Process Creation | 4 | 126.00 | 243.00 | 19.30 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 854.69s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2373.70 | 6.00 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 10342.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4651.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3901.50 | 9.90 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12466.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6302.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 851.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1425.30 | 8.60 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3910.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2471.30 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2587.20 | 15.60 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7849.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3523.30 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 914.74s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4169.60 | 7.20 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11008.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5498.20 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3805.50 | 6.60 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13143.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5612.30 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.80 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 19.00 | 4.40 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 434.99s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.40 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.50 | 7.40 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 574.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.20 | 7.00 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.70 | 4.50 |

