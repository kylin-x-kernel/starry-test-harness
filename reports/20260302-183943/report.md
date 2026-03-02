# StarryOS Daily Test Report

**运行时间**: 2026-03-02T17:01:06.890540338Z → 2026-03-02T18:39:43.465384103Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 27.81s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 338.37s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2170860.60 | 186.00 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5605716.30 | 480.40 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 372.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 365.90 | 66.50 |
  | Double-Precision Whetstone | 4 | 55.00 | 989.80 | 180.00 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27487.50 | 18.30 |
  | System Call Overhead | 4 | 15000.00 | 35518.30 | 23.70 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 332.67s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 18348.40 | 14.70 |
  | Pipe Throughput | 4 | 12440.00 | 40099.80 | 32.20 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 331.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2710.00 | 6.80 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3669.30 | 9.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 237.32s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 109.60 | 8.70 |
  | Process Creation | 4 | 126.00 | 226.30 | 18.00 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 848.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3233.00 | 8.20 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 7668.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4093.10 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3902.80 | 9.90 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 14645.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7196.90 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 844.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1550.90 | 9.40 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4218.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2413.40 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2779.00 | 16.80 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7724.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4145.30 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 888.32s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 6555.60 | 11.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 12856.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 6077.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4175.50 | 7.20 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14778.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6321.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 238.42s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 9.30 | 2.20 |
  | Execl Throughput | 4 | 43.00 | 16.40 | 3.80 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 433.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.00 | 4.70 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 33.10 | 7.80 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 619.53s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.40 | 7.30 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.00 | 5.00 |

