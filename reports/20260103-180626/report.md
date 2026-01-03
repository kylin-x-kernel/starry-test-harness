# StarryOS Daily Test Report

**运行时间**: 2026-01-03T16:35:00.782847107Z → 2026-01-03T18:06:26.017223491Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 15.88s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 311.30s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 3672969.90 | 314.70 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 8460804.60 | 725.00 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 364.73s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 676.30 | 123.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 1511.80 | 274.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 304.16s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 57924.70 | 38.60 |
  | System Call Overhead | 4 | 15000.00 | 50059.80 | 33.40 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 303.68s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 44896.10 | 36.10 |
  | Pipe Throughput | 4 | 12440.00 | 72202.80 | 58.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 303.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 95.30 | 0.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 678.80 | 1.70 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 222.88s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.50 | 7.90 |
  | Process Creation | 4 | 126.00 | 259.40 | 20.60 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 817.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 7850.50 | 19.80 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 27951.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 17071.30 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 5964.50 | 15.10 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 18120.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 9388.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 812.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 4506.90 | 27.20 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 11494.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 8013.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3994.30 | 24.10 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 11564.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 6682.50 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 850.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 13572.00 | 23.40 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 40427.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 21160.00 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4956.10 | 8.50 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 18891.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 7659.40 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 221.01s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 18.20 | 4.20 |
  | Execl Throughput | 4 | 43.00 | 31.50 | 7.30 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 414.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 42.00 | 9.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 50.10 | 11.80 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 526.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.20 | 8.70 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.60 | 4.30 |

