# StarryOS Daily Test Report

**运行时间**: 2025-12-31T16:36:18.481108060Z → 2025-12-31T18:42:37.517478621Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 9/13
- ❌ **失败**: 4/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 69.2%

## 📋 测试用例详情

### ❌ concurrency-load-demo

- **状态**: `fail`
- **耗时**: 1818.06s
- **错误信息**: [daily] StarryOS command failed

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 307.85s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 3677547.70 | 315.10 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 8523779.00 | 730.40 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 362.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 677.00 | 123.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 1468.40 | 267.00 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 301.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 59103.70 | 39.40 |
  | System Call Overhead | 4 | 15000.00 | 53149.90 | 35.40 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 301.95s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 45062.20 | 36.20 |
  | Pipe Throughput | 4 | 12440.00 | 75373.30 | 60.60 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 301.51s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 95.40 | 0.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 655.40 | 1.60 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 222.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.50 | 7.90 |
  | Process Creation | 4 | 126.00 | 271.30 | 21.50 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 817.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 8927.80 | 22.50 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 21575.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 17454.40 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 6086.20 | 15.40 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 18125.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 9360.00 | --- |


### ❌ unixbench-fsbuffer-test

- **状态**: `fail`
- **耗时**: 33.68s
- **错误信息**: at /rustc/f5209000832c9d3bc29c91f4daef4ca9f28dc797/library/core/src/panic.rs:178:9 with fp=0xffff00004e87fc30, ip=0xffff000040401d58

### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 855.83s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 13781.70 | 23.80 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 41409.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 21415.40 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4159.60 | 7.20 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 16569.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6284.20 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 220.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 19.30 | 4.50 |
  | Execl Throughput | 4 | 43.00 | 26.50 | 6.20 |


### ❌ unixbench-shell1-test

- **状态**: `fail`
- **耗时**: 1008.31s
- **错误信息**: [starry-ci] ERROR: command timed out

### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.44s
- **错误信息**: [starry-ci] ERROR: command timed out
