# StarryOS Daily Test Report

**运行时间**: 2026-01-30T16:52:27.137154994Z → 2026-01-30T18:36:48.314602667Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 13.41s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 334.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2509704.20 | 215.10 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 7308474.60 | 626.30 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 371.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 364.60 | 66.30 |
  | Double-Precision Whetstone | 4 | 55.00 | 940.30 | 171.00 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 328.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 34870.20 | 23.20 |
  | System Call Overhead | 4 | 15000.00 | 38241.70 | 25.50 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.07s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 21688.90 | 17.40 |
  | Pipe Throughput | 4 | 12440.00 | 48104.60 | 38.70 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.67s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3349.10 | 8.40 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4565.40 | 11.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.51s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 122.80 | 9.70 |
  | Process Creation | 4 | 126.00 | 254.20 | 20.20 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 858.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2431.20 | 6.10 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 6165.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 2678.90 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3817.60 | 9.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12133.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5814.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 849.80s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1753.70 | 10.60 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4341.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2763.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2054.10 | 12.40 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7072.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4121.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 917.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3164.00 | 5.50 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9368.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3045.00 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3769.90 | 6.50 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 12955.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5286.40 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.46s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 11.40 | 2.60 |
  | Execl Throughput | 4 | 43.00 | 17.40 | 4.00 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 432.64s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.00 | 4.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 29.50 | 7.00 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1007.83s
- **错误信息**: [starry-ci] ERROR: command timed out
