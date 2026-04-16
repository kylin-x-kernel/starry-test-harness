# StarryOS Daily Test Report

**运行时间**: 2026-04-16T17:25:46.129770064Z → 2026-04-16T18:49:20.544073754Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.67s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 336.83s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2427991.30 | 208.10 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6067510.70 | 519.90 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 368.11s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 345.80 | 62.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 935.40 | 170.10 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 26472.70 | 17.60 |
  | System Call Overhead | 4 | 15000.00 | 30304.70 | 20.20 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 328.19s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19645.60 | 15.80 |
  | Pipe Throughput | 4 | 12440.00 | 45459.80 | 36.50 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3033.00 | 7.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3807.80 | 9.50 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.44s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 114.50 | 9.10 |
  | Process Creation | 4 | 126.00 | 230.40 | 18.30 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 851.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2735.20 | 6.90 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8792.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4191.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4201.40 | 10.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 13007.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5430.30 | --- |


### ❌ unixbench-fsbuffer-test

- **状态**: `fail`
- **耗时**: 34.31s
- **错误信息**: at /rustc/1159e78c4747b02ef996e55082b704c09b970588/library/core/src/panic.rs:223:9 with fp=0xffff00004963fbf0, ip=0xffff000040466120

### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 899.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3552.40 | 6.10 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11589.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4875.10 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3662.10 | 6.30 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14778.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5671.20 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.99s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.40 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 16.40 | 3.80 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 434.52s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.00 | 5.20 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.30 | 8.10 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 538.89s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.50 | 7.60 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.80 | 4.60 |

