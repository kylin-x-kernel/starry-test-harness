# StarryOS Daily Test Report

**运行时间**: 2026-04-11T16:50:33.025549289Z → 2026-04-11T18:27:18.519500171Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 25.49s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 334.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2188373.60 | 187.50 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 4826148.90 | 413.60 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 370.42s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 366.40 | 66.60 |
  | Double-Precision Whetstone | 4 | 55.00 | 873.20 | 158.80 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28080.00 | 18.70 |
  | System Call Overhead | 4 | 15000.00 | 37584.80 | 25.10 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 328.10s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 17633.10 | 14.20 |
  | Pipe Throughput | 4 | 12440.00 | 41832.00 | 33.60 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.72s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2749.00 | 6.90 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3263.60 | 8.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 234.75s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 110.40 | 8.80 |
  | Process Creation | 4 | 126.00 | 235.70 | 18.70 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 846.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3063.00 | 7.70 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9875.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5714.40 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4812.50 | 12.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 14790.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7740.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 841.05s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 2029.10 | 12.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 5359.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3503.10 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3265.50 | 19.70 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 8088.10 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4935.20 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 886.52s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4872.60 | 8.40 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10967.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 8114.00 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 5002.50 | 8.60 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 16447.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6833.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.72s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 9.50 | 2.20 |
  | Execl Throughput | 4 | 43.00 | 14.40 | 3.40 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 427.95s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.30 | 5.20 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 35.80 | 8.40 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 549.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.10 | 8.50 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.20 | 5.40 |

