# StarryOS Daily Test Report

**运行时间**: 2026-01-15T01:27:45.034327328Z → 2026-01-15T03:05:09.022537825Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 16.50s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 336.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2392828.30 | 205.00 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6526406.60 | 559.20 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 369.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 349.80 | 63.60 |
  | Double-Precision Whetstone | 4 | 55.00 | 1022.00 | 185.80 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28659.90 | 19.10 |
  | System Call Overhead | 4 | 15000.00 | 37985.20 | 25.30 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 18928.80 | 15.20 |
  | Pipe Throughput | 4 | 12440.00 | 48514.40 | 39.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.65s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3083.80 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3804.40 | 9.50 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 234.34s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 122.70 | 9.70 |
  | Process Creation | 4 | 126.00 | 253.40 | 20.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 858.34s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2571.40 | 6.50 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 5953.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3236.20 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3435.30 | 8.70 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 10906.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5413.80 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 849.03s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1458.20 | 8.80 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4751.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3414.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2468.00 | 14.90 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7388.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4053.60 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 923.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5115.00 | 8.80 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9523.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4912.80 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3336.60 | 5.80 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 12162.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 4062.10 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.42s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.80 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 17.10 | 4.00 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 432.73s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.60 | 5.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.60 | 7.40 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 595.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.10 | 6.80 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.20 | 3.70 |

