# StarryOS Daily Test Report

**运行时间**: 2026-04-01T17:07:26.787314552Z → 2026-04-01T18:44:50.890078913Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 25.83s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 335.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2427138.20 | 208.00 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5866820.50 | 502.70 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 369.10s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 349.60 | 63.60 |
  | Double-Precision Whetstone | 4 | 55.00 | 811.30 | 147.50 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.74s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27615.30 | 18.40 |
  | System Call Overhead | 4 | 15000.00 | 32846.90 | 21.90 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.52s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19316.10 | 15.50 |
  | Pipe Throughput | 4 | 12440.00 | 51502.40 | 41.40 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3008.80 | 7.50 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3848.40 | 9.60 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.64s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 115.50 | 9.20 |
  | Process Creation | 4 | 126.00 | 235.00 | 18.70 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 853.71s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2557.10 | 6.50 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 10544.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4248.90 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4078.20 | 10.30 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12821.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6132.90 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 847.83s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1865.10 | 11.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4762.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3231.10 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2725.50 | 16.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7803.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4545.40 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 902.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3348.50 | 5.80 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10223.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 7199.40 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3932.60 | 6.80 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14647.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5332.20 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.83s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.50 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 16.40 | 3.80 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 431.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.30 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.60 | 8.20 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 552.46s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.50 | 7.50 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.00 | 5.00 |

