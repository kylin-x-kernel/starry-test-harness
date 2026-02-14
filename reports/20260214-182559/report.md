# StarryOS Daily Test Report

**运行时间**: 2026-02-14T16:41:49.473701158Z → 2026-02-14T18:25:59.024304425Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.48s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 340.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2421902.00 | 207.50 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6041445.90 | 517.70 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 373.80s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 354.90 | 64.50 |
  | Double-Precision Whetstone | 4 | 55.00 | 913.40 | 166.10 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.06s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27642.10 | 18.40 |
  | System Call Overhead | 4 | 15000.00 | 31436.80 | 21.00 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.73s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19012.10 | 15.30 |
  | Pipe Throughput | 4 | 12440.00 | 45810.90 | 36.80 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 330.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3089.70 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3836.10 | 9.60 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.30s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 114.60 | 9.10 |
  | Process Creation | 4 | 126.00 | 235.70 | 18.70 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 850.41s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2413.80 | 6.10 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8736.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3593.60 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3983.90 | 10.10 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12490.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 4355.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 846.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1607.70 | 9.70 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3669.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2666.70 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2647.90 | 16.00 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7846.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4552.50 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 899.06s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5463.00 | 9.40 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9301.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 6728.10 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 2861.00 | 4.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 15036.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5625.00 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 21.70 | 5.00 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 424.85s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.10 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 30.70 | 7.20 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1008.50s
- **错误信息**: [xkernel-ci] ERROR: command timed out
