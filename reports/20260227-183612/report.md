# StarryOS Daily Test Report

**运行时间**: 2026-02-27T16:52:04.443248461Z → 2026-02-27T18:36:12.049080813Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 9.13s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 337.30s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2428889.10 | 208.10 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5276699.30 | 452.20 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 369.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 353.30 | 64.20 |
  | Double-Precision Whetstone | 4 | 55.00 | 912.70 | 165.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 328.14s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27422.60 | 18.30 |
  | System Call Overhead | 4 | 15000.00 | 30841.00 | 20.60 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 328.75s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 20108.50 | 16.20 |
  | Pipe Throughput | 4 | 12440.00 | 52273.20 | 42.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2866.70 | 7.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3724.50 | 9.30 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 119.30 | 9.50 |
  | Process Creation | 4 | 126.00 | 243.60 | 19.30 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 853.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2909.20 | 7.30 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 7992.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3648.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3868.30 | 9.80 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12483.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6041.90 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 848.51s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1479.80 | 8.90 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3952.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2424.20 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2700.90 | 16.30 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6704.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4486.30 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 904.05s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3181.50 | 5.50 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10833.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4408.50 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3307.70 | 5.70 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14190.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5430.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.54s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 15.20 | 3.50 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 431.78s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.40 | 5.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 33.50 | 7.90 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.88s
- **错误信息**: [xkernel-ci] ERROR: command timed out
