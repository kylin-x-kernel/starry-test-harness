# StarryOS Daily Test Report

**运行时间**: 2026-04-28T17:55:03.631711816Z → 2026-04-28T19:31:15.706302865Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.85s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 331.89s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2514799.90 | 215.50 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6022394.10 | 516.10 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 363.78s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 336.60 | 61.20 |
  | Double-Precision Whetstone | 4 | 55.00 | 896.00 | 162.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 324.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 30053.80 | 20.00 |
  | System Call Overhead | 4 | 15000.00 | 41692.00 | 27.80 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 324.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 21975.00 | 17.70 |
  | Pipe Throughput | 4 | 12440.00 | 60224.90 | 48.40 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 324.28s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3681.20 | 9.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4345.30 | 10.90 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 233.01s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 124.60 | 9.90 |
  | Process Creation | 4 | 126.00 | 257.10 | 20.40 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 844.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2792.50 | 7.10 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8492.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4514.30 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4171.70 | 10.50 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12680.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7334.30 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 841.41s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1867.60 | 11.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 5105.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3065.80 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3264.50 | 19.70 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 9234.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5348.70 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 895.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3866.20 | 6.70 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 12341.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5656.60 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4389.80 | 7.60 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 15882.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5592.10 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 230.68s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 11.60 | 2.70 |
  | Execl Throughput | 4 | 43.00 | 21.50 | 5.00 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 426.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 23.90 | 5.60 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 37.60 | 8.90 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 534.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.00 | 8.30 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.90 | 4.90 |

