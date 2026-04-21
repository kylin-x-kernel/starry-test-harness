# StarryOS Daily Test Report

**运行时间**: 2026-04-21T17:13:51.402877338Z → 2026-04-21T18:51:17.118110248Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.74s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 333.68s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2431601.30 | 208.40 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5865230.00 | 502.60 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 365.97s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.00 | 63.80 |
  | Double-Precision Whetstone | 4 | 55.00 | 993.10 | 180.60 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 327.94s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27839.30 | 18.60 |
  | System Call Overhead | 4 | 15000.00 | 32759.30 | 21.80 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 328.55s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19575.70 | 15.70 |
  | Pipe Throughput | 4 | 12440.00 | 49389.70 | 39.70 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.85s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3131.80 | 7.80 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4284.60 | 10.70 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.65s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 115.30 | 9.10 |
  | Process Creation | 4 | 126.00 | 238.60 | 18.90 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 851.78s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3136.10 | 7.90 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8025.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4015.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4088.50 | 10.30 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 13079.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6323.80 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 845.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1608.80 | 9.70 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 5391.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2779.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2539.50 | 15.30 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7835.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3889.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 898.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4328.10 | 7.50 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9827.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 6975.70 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3924.70 | 6.80 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14298.80 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 4218.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.72s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 17.60 | 4.10 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 429.34s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.60 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.30 | 8.10 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 572.65s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.80 | 8.10 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.00 | 5.00 |

