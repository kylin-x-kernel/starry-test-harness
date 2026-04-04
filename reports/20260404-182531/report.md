# StarryOS Daily Test Report

**运行时间**: 2026-04-04T16:48:32.246266602Z → 2026-04-04T18:25:31.509252477Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.80s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 333.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2429774.60 | 208.20 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5528048.50 | 473.70 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 368.89s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 348.20 | 63.30 |
  | Double-Precision Whetstone | 4 | 55.00 | 967.70 | 175.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 328.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27434.40 | 18.30 |
  | System Call Overhead | 4 | 15000.00 | 34047.20 | 22.70 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19922.60 | 16.00 |
  | Pipe Throughput | 4 | 12440.00 | 47722.90 | 38.40 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.02s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2948.70 | 7.40 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4546.20 | 11.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.92s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 115.50 | 9.20 |
  | Process Creation | 4 | 126.00 | 232.60 | 18.50 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 848.47s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2792.00 | 7.10 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 10216.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 6216.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3990.40 | 10.10 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12712.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6203.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 845.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 2080.20 | 12.60 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4216.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2805.90 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2716.90 | 16.40 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6133.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4556.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 904.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4529.10 | 7.80 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11688.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5880.40 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3904.40 | 6.70 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14680.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5721.90 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.50 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 15.30 | 3.60 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 433.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.40 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.70 | 8.20 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 532.86s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.40 | 7.40 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.20 | 5.40 |

