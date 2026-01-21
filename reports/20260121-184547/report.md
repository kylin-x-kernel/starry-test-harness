# StarryOS Daily Test Report

**运行时间**: 2026-01-21T17:08:50.161123691Z → 2026-01-21T18:45:47.814233954Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.32s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 334.62s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2427710.80 | 208.00 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5560721.90 | 476.50 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 372.62s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.90 | 64.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 1122.70 | 204.10 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.10s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27760.40 | 18.50 |
  | System Call Overhead | 4 | 15000.00 | 37461.80 | 25.00 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.57s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 18913.00 | 15.20 |
  | Pipe Throughput | 4 | 12440.00 | 48137.40 | 38.70 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.69s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3115.90 | 7.80 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4053.20 | 10.10 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 234.65s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 122.40 | 9.70 |
  | Process Creation | 4 | 126.00 | 253.60 | 20.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 859.22s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2392.60 | 6.00 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 5968.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4419.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3603.80 | 9.10 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 8971.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5611.80 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 853.68s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1503.30 | 9.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3562.60 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2424.20 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2480.90 | 15.00 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6825.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3935.50 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 914.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3897.10 | 6.70 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 8916.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4663.20 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3348.00 | 5.80 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14580.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5282.60 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.80 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 19.50 | 4.50 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 434.40s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.10 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 30.80 | 7.30 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 576.54s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.10 | 6.80 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.40 | 4.00 |

