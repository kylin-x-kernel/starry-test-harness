# StarryOS Daily Test Report

**运行时间**: 2026-03-29T16:46:53.464002891Z → 2026-03-29T18:18:05.659853768Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 11/13
- ❌ **失败**: 2/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 84.6%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.16s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 336.25s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2437720.70 | 208.90 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6406362.70 | 549.00 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 369.00s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.20 | 63.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 908.20 | 165.10 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 327.57s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27417.80 | 18.30 |
  | System Call Overhead | 4 | 15000.00 | 32803.90 | 21.90 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 326.89s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19872.90 | 16.00 |
  | Pipe Throughput | 4 | 12440.00 | 48683.30 | 39.10 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.05s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3139.40 | 7.80 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3779.40 | 9.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 116.80 | 9.30 |
  | Process Creation | 4 | 126.00 | 234.80 | 18.60 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 850.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2632.90 | 6.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9330.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3907.10 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3542.00 | 8.90 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12330.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5283.70 | --- |


### ❌ unixbench-fsbuffer-test

- **状态**: `fail`
- **耗时**: 33.99s
- **错误信息**: at /rustc/1159e78c4747b02ef996e55082b704c09b970588/library/core/src/panic.rs:223:9 with fp=0xffff00004963fbf0, ip=0xffff000040465120

### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 899.14s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3638.00 | 6.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10728.80 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4616.00 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3366.30 | 5.80 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14598.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5599.70 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.51s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 17.30 | 4.00 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 426.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.90 | 5.40 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.70 | 8.20 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1010.26s
- **错误信息**: [xkernel-ci] ERROR: command timed out
