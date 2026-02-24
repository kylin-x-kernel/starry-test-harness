# StarryOS Daily Test Report

**运行时间**: 2026-02-24T17:14:51.514140065Z → 2026-02-24T18:53:39.788377824Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.14s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 341.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2192468.20 | 187.90 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5402526.80 | 462.90 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 379.16s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 369.70 | 67.20 |
  | Double-Precision Whetstone | 4 | 55.00 | 872.20 | 158.60 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 331.89s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 26663.20 | 17.80 |
  | System Call Overhead | 4 | 15000.00 | 36507.50 | 24.30 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 333.83s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 17858.80 | 14.40 |
  | Pipe Throughput | 4 | 12440.00 | 43978.90 | 35.40 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 333.19s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2774.10 | 6.90 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3711.60 | 9.30 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 236.37s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 110.50 | 8.80 |
  | Process Creation | 4 | 126.00 | 239.50 | 19.00 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 849.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3055.70 | 7.70 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 6611.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3420.30 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4711.60 | 11.90 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12389.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6302.90 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 852.09s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1333.80 | 8.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3544.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 1978.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2565.50 | 15.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7699.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4810.10 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 923.49s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3056.60 | 5.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 6120.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3077.30 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3229.30 | 5.60 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13933.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5645.00 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 235.33s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 9.40 | 2.20 |
  | Execl Throughput | 4 | 43.00 | 16.10 | 3.70 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 433.09s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 18.50 | 4.40 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 29.30 | 6.90 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 634.43s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 3.70 | 6.10 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.10 | 3.50 |

