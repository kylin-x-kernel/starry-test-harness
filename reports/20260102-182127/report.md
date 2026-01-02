# StarryOS Daily Test Report

**运行时间**: 2026-01-02T16:37:06.146702183Z → 2026-01-02T18:21:27.170361727Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 11/13
- ❌ **失败**: 2/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 84.6%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.41s

### ❌ unixbench-dhry2reg-test

- **状态**: `fail`
- **耗时**: 617.15s
- **错误信息**: [starry-ci] ERROR: command timed out

### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 363.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 679.30 | 123.50 |
  | Double-Precision Whetstone | 4 | 55.00 | 1472.70 | 267.80 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 302.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 58586.00 | 39.10 |
  | System Call Overhead | 4 | 15000.00 | 47682.10 | 31.80 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 302.08s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 44707.00 | 35.90 |
  | Pipe Throughput | 4 | 12440.00 | 73344.50 | 59.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 301.60s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 95.50 | 0.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 539.90 | 1.30 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 222.32s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.50 | 7.90 |
  | Process Creation | 4 | 126.00 | 267.50 | 21.20 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 817.25s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 8483.60 | 21.40 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 28464.70 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 17412.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 6003.80 | 15.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 17711.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 9485.70 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 810.67s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 4600.50 | 27.80 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 11535.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 8212.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3945.50 | 23.80 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 10310.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 6513.40 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 851.50s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 13442.20 | 23.20 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 41356.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 21286.50 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4767.00 | 8.20 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 17642.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 7388.20 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 220.92s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 19.20 | 4.50 |
  | Execl Throughput | 4 | 43.00 | 27.80 | 6.50 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 409.49s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 43.30 | 10.20 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 53.00 | 12.50 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1008.84s
- **错误信息**: [starry-ci] ERROR: command timed out
