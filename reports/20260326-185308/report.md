# StarryOS Daily Test Report

**运行时间**: 2026-03-26T17:15:20.778679583Z → 2026-03-26T18:53:08.598923482Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 27.71s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 341.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2432628.00 | 208.50 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6358807.70 | 544.90 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 371.54s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.70 | 64.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 822.70 | 149.60 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 331.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 26905.30 | 17.90 |
  | System Call Overhead | 4 | 15000.00 | 31045.00 | 20.70 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 331.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 20163.60 | 16.20 |
  | Pipe Throughput | 4 | 12440.00 | 43163.80 | 34.70 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 330.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3005.10 | 7.50 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3599.80 | 9.00 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 236.51s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 114.00 | 9.00 |
  | Process Creation | 4 | 126.00 | 234.40 | 18.60 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 859.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2332.30 | 5.90 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8574.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5638.80 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3816.00 | 9.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12061.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6038.70 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 847.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1406.70 | 8.50 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 5409.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2465.90 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2579.00 | 15.60 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7539.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4369.60 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 901.25s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3281.00 | 5.70 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11984.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4174.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4202.60 | 7.20 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13641.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5607.80 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 235.73s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.80 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 16.40 | 3.80 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 430.10s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.70 | 5.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 35.10 | 8.30 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 548.72s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.40 | 7.30 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.20 | 5.40 |

