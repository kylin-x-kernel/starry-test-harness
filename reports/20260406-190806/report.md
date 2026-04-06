# StarryOS Daily Test Report

**运行时间**: 2026-04-06T17:00:52.973608304Z → 2026-04-06T19:08:06.044188810Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ❌ concurrency-load-demo

- **状态**: `fail`
- **耗时**: 1827.60s
- **错误信息**: [daily] X-Kernel command failed

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 336.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2425802.80 | 207.90 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6766270.50 | 579.80 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 366.99s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.70 | 63.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 798.30 | 145.10 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 326.60s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28259.10 | 18.80 |
  | System Call Overhead | 4 | 15000.00 | 34382.80 | 22.90 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 327.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 20081.20 | 16.10 |
  | Pipe Throughput | 4 | 12440.00 | 39556.10 | 31.80 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 326.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3074.10 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3762.50 | 9.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 234.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 118.10 | 9.40 |
  | Process Creation | 4 | 126.00 | 240.00 | 19.00 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 846.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3199.60 | 8.10 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8032.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4807.60 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4013.00 | 10.10 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12581.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5568.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 844.60s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 2010.10 | 12.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4694.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3232.80 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2711.50 | 16.40 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7711.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4558.40 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 893.61s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5537.90 | 9.50 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11740.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4500.70 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4171.00 | 7.20 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14238.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5809.90 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 16.40 | 3.80 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 431.40s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.60 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.40 | 8.10 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 567.86s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.90 | 8.20 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.20 | 5.40 |

