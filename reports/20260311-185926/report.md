# StarryOS Daily Test Report

**运行时间**: 2026-03-11T17:04:14.984574920Z → 2026-03-11T18:59:26.394669997Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 11/13
- ❌ **失败**: 2/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 84.6%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 27.06s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 339.00s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2441489.90 | 209.20 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6757998.80 | 579.10 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 372.37s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 353.90 | 64.40 |
  | Double-Precision Whetstone | 4 | 55.00 | 962.10 | 174.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 332.51s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28027.20 | 18.70 |
  | System Call Overhead | 4 | 15000.00 | 31606.30 | 21.10 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 333.17s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19553.00 | 15.70 |
  | Pipe Throughput | 4 | 12440.00 | 42343.50 | 34.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 332.65s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3038.60 | 7.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4048.80 | 10.10 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 236.98s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 114.20 | 9.10 |
  | Process Creation | 4 | 126.00 | 234.20 | 18.60 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 854.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2126.00 | 5.40 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8687.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3450.80 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4005.70 | 10.10 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12468.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6196.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 852.09s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1450.20 | 8.80 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4057.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3155.80 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2164.90 | 13.10 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7924.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4535.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 902.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3652.30 | 6.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9710.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4927.60 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4562.40 | 7.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14064.80 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5656.00 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.75s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 16.90 | 3.90 |


### ❌ unixbench-shell1-test

- **状态**: `fail`
- **耗时**: 1010.65s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.36s
- **错误信息**: [xkernel-ci] ERROR: command timed out
