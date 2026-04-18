# StarryOS Daily Test Report

**运行时间**: 2026-04-18T16:54:45.685391354Z → 2026-04-18T18:31:29.689257843Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 25.78s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 334.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2194441.70 | 188.00 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6377307.30 | 546.50 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 367.64s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 366.30 | 66.60 |
  | Double-Precision Whetstone | 4 | 55.00 | 873.10 | 158.70 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 326.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 26288.20 | 17.50 |
  | System Call Overhead | 4 | 15000.00 | 38442.70 | 25.60 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 328.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 17569.90 | 14.10 |
  | Pipe Throughput | 4 | 12440.00 | 43680.50 | 35.10 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 326.14s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2759.20 | 6.90 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3821.40 | 9.60 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 234.87s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 109.90 | 8.70 |
  | Process Creation | 4 | 126.00 | 233.90 | 18.60 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 843.59s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3839.00 | 9.70 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9237.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5303.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3956.40 | 10.00 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 11396.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5379.90 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 839.94s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1958.90 | 11.80 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4644.10 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3161.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2625.70 | 15.90 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 8508.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5268.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 898.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5878.10 | 10.10 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 12260.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 6381.60 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4921.40 | 8.50 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14668.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5739.20 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.56s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 9.40 | 2.20 |
  | Execl Throughput | 4 | 43.00 | 15.20 | 3.50 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 429.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.40 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 35.80 | 8.40 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 549.44s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.00 | 8.30 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.20 | 5.30 |

