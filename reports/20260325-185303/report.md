# StarryOS Daily Test Report

**运行时间**: 2026-03-25T17:14:52.809312284Z → 2026-03-25T18:53:03.859321475Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.33s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 334.90s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2414173.20 | 206.90 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6669984.20 | 571.50 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 367.50s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.60 | 63.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 901.20 | 163.80 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 327.53s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27750.00 | 18.50 |
  | System Call Overhead | 4 | 15000.00 | 34218.40 | 22.80 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 327.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19904.50 | 16.00 |
  | Pipe Throughput | 4 | 12440.00 | 43032.40 | 34.60 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.75s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3096.40 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3973.60 | 9.90 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 234.98s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 117.10 | 9.30 |
  | Process Creation | 4 | 126.00 | 240.40 | 19.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 849.80s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3648.00 | 9.20 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9051.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4275.80 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4079.50 | 10.30 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12432.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6291.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 844.16s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1557.00 | 9.40 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 5207.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3648.90 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2594.30 | 15.70 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7869.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4574.30 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 906.71s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4325.80 | 7.50 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11662.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4559.30 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3352.80 | 5.80 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14328.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5833.20 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.40 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 20.50 | 4.80 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 428.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.50 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.80 | 8.20 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 610.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.90 | 8.20 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.10 | 5.10 |

