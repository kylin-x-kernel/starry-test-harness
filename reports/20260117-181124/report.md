# StarryOS Daily Test Report

**运行时间**: 2026-01-17T16:33:45.345006889Z → 2026-01-17T18:11:24.734604895Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.04s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 340.72s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2386975.90 | 204.50 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5496102.10 | 471.00 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 373.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.50 | 63.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 914.70 | 166.30 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.76s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28176.70 | 18.80 |
  | System Call Overhead | 4 | 15000.00 | 35164.50 | 23.40 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.90s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 18922.00 | 15.20 |
  | Pipe Throughput | 4 | 12440.00 | 51203.70 | 41.20 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3104.00 | 7.80 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3894.40 | 9.70 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.57s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 121.60 | 9.70 |
  | Process Creation | 4 | 126.00 | 253.50 | 20.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 855.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2470.20 | 6.20 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 7026.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5684.90 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3521.00 | 8.90 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 11425.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5087.10 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 858.67s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1241.50 | 7.50 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4816.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3436.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2398.30 | 14.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6317.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3160.40 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 947.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3592.50 | 6.20 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9693.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4776.30 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3094.70 | 5.30 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 9339.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 3962.30 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.14s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 16.60 | 3.90 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 427.67s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.70 | 4.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.30 | 7.60 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 578.62s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 3.60 | 6.00 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.20 | 3.70 |

