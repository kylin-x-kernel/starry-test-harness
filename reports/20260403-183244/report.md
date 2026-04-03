# StarryOS Daily Test Report

**运行时间**: 2026-04-03T16:54:18.803688497Z → 2026-04-03T18:32:44.927235445Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 28.84s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 338.59s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2403043.00 | 205.90 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5736603.60 | 491.60 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 370.40s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.20 | 63.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 860.50 | 156.50 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 331.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28840.50 | 19.20 |
  | System Call Overhead | 4 | 15000.00 | 34094.90 | 22.70 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.57s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 20138.10 | 16.20 |
  | Pipe Throughput | 4 | 12440.00 | 47934.90 | 38.50 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.79s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3110.50 | 7.80 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3802.70 | 9.50 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 115.80 | 9.20 |
  | Process Creation | 4 | 126.00 | 235.10 | 18.70 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 848.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2713.10 | 6.90 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 10983.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5970.90 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4020.90 | 10.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12741.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6177.30 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 843.00s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1902.80 | 11.50 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4816.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3317.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2694.00 | 16.30 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6903.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4586.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 903.94s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3341.70 | 5.80 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 13893.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4457.20 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3745.50 | 6.50 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 16154.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5668.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.50 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 17.10 | 4.00 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 430.30s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.40 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.80 | 7.70 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 610.40s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.80 | 8.10 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.30 | 5.50 |

