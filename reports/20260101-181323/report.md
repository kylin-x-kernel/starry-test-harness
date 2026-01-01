# StarryOS Daily Test Report

**运行时间**: 2026-01-01T16:38:00.732652337Z → 2026-01-01T18:13:23.463515161Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.30s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 308.79s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 5140219.90 | 440.50 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 9645945.50 | 826.60 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 349.07s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 764.80 | 139.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 1497.30 | 272.20 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 300.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 63073.30 | 42.00 |
  | System Call Overhead | 4 | 15000.00 | 53876.70 | 35.90 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 300.28s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 47828.20 | 38.40 |
  | Pipe Throughput | 4 | 12440.00 | 77495.50 | 62.30 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 299.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 78.30 | 0.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 469.00 | 1.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 220.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.50 | 7.90 |
  | Process Creation | 4 | 126.00 | 267.70 | 21.20 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 813.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 8542.00 | 21.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 21295.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 20635.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 6716.70 | 17.00 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 19378.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 10505.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 808.32s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 4457.50 | 26.90 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 11348.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 7957.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 4012.10 | 24.20 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 10204.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 7047.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 849.95s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 15834.10 | 27.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 48420.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 25662.00 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4607.50 | 7.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 18477.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 7851.80 | --- |


### ❌ unixbench-execl-test

- **状态**: `fail`
- **耗时**: 509.31s
- **错误信息**: [starry-ci] ERROR: command timed out

### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 409.89s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 46.60 | 11.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 54.30 | 12.80 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 520.74s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.90 | 9.80 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.50 | 4.20 |

