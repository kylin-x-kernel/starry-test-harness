# StarryOS Daily Test Report

**运行时间**: 2026-03-23T17:04:14.227453231Z → 2026-03-23T18:41:13.809815909Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.41s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 335.06s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2521694.20 | 216.10 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6641007.60 | 569.10 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 368.99s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 334.90 | 60.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 725.20 | 131.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 324.34s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 30463.90 | 20.30 |
  | System Call Overhead | 4 | 15000.00 | 36741.10 | 24.50 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 325.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 22115.30 | 17.80 |
  | Pipe Throughput | 4 | 12440.00 | 43601.10 | 35.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 326.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3494.00 | 8.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4604.70 | 11.50 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 233.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 125.20 | 9.90 |
  | Process Creation | 4 | 126.00 | 253.80 | 20.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 843.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3400.60 | 8.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8946.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3886.80 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4731.30 | 11.90 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 14624.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5779.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 845.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1756.40 | 10.60 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4335.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2926.30 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3236.00 | 19.60 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 9199.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5288.50 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 892.71s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4634.60 | 8.00 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10008.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4988.00 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4398.90 | 7.60 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 15944.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6427.80 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.10s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 11.70 | 2.70 |
  | Execl Throughput | 4 | 43.00 | 15.60 | 3.60 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 423.43s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.60 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.60 | 8.20 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 571.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.80 | 8.00 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.70 | 4.50 |

