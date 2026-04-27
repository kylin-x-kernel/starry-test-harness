# StarryOS Daily Test Report

**运行时间**: 2026-04-27T17:39:15.594164806Z → 2026-04-27T19:12:57.744624734Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 22.84s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 320.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 3267383.70 | 280.00 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 8461719.60 | 725.10 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 349.87s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 429.40 | 78.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 1041.30 | 189.30 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 313.05s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 40069.20 | 26.70 |
  | System Call Overhead | 4 | 15000.00 | 51252.00 | 34.20 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 315.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 29471.80 | 23.70 |
  | Pipe Throughput | 4 | 12440.00 | 69390.10 | 55.80 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 313.07s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 4565.20 | 11.40 |
  | Pipe-based Context Switching | 4 | 4000.00 | 5351.60 | 13.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 229.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 164.30 | 13.00 |
  | Process Creation | 4 | 126.00 | 335.70 | 26.60 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 834.44s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 4199.30 | 10.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 14381.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5094.90 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 6238.50 | 15.80 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 10742.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 8529.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 825.74s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 2418.90 | 14.60 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 6753.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3808.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 4116.60 | 24.90 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 10413.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 6169.80 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 857.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5191.30 | 9.00 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 14702.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 6972.30 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 5036.20 | 8.70 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 20734.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 8774.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 227.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 15.20 | 3.50 |
  | Execl Throughput | 4 | 43.00 | 22.30 | 5.20 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 421.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 30.00 | 7.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 47.20 | 11.10 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 529.71s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 6.80 | 11.30 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 4.60 | 7.70 |

