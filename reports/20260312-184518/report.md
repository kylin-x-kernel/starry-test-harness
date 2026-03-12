# StarryOS Daily Test Report

**运行时间**: 2026-03-12T17:07:07.851338956Z → 2026-03-12T18:45:18.511335573Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.47s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 338.73s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2454711.20 | 210.30 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6100164.50 | 522.70 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 374.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.50 | 63.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 863.50 | 157.00 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.34s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27787.10 | 18.50 |
  | System Call Overhead | 4 | 15000.00 | 30817.20 | 20.50 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.67s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19463.90 | 15.60 |
  | Pipe Throughput | 4 | 12440.00 | 48228.00 | 38.80 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3076.50 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3686.00 | 9.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.95s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 116.90 | 9.30 |
  | Process Creation | 4 | 126.00 | 237.10 | 18.80 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 853.30s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2814.50 | 7.10 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8355.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4567.40 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4020.40 | 10.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 13057.70 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6171.10 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 846.11s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1840.00 | 11.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4009.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2666.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2794.40 | 16.90 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7727.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4405.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 920.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3853.00 | 6.60 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 8748.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3894.70 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3778.40 | 6.50 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13543.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5281.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.92s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 18.80 | 4.40 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 434.61s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.20 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.60 | 7.70 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 567.48s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.20 | 7.00 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.80 | 4.60 |

