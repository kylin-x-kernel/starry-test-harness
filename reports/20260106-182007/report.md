# StarryOS Daily Test Report

**运行时间**: 2026-01-06T16:40:45.898905175Z → 2026-01-06T18:20:07.810415424Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.14s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 310.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 3684678.70 | 315.70 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 8392420.70 | 719.10 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 359.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 676.40 | 123.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 1465.10 | 266.40 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 303.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 57548.10 | 38.40 |
  | System Call Overhead | 4 | 15000.00 | 50681.70 | 33.80 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 303.56s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 44531.30 | 35.80 |
  | Pipe Throughput | 4 | 12440.00 | 74752.50 | 60.10 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 303.97s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 95.20 | 0.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 514.30 | 1.30 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 223.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.40 | 7.90 |
  | Process Creation | 4 | 126.00 | 261.80 | 20.80 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 818.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 8068.90 | 20.40 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 20812.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 16766.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 5873.80 | 14.80 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 16998.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 8932.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 812.19s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 4359.50 | 26.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 11146.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 7941.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3803.50 | 23.00 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 9900.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 6463.30 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 852.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 13153.50 | 22.70 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 39796.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 20620.00 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3976.00 | 6.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 18939.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 7440.10 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 221.97s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 18.60 | 4.30 |
  | Execl Throughput | 4 | 43.00 | 25.40 | 5.90 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 412.43s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 42.10 | 9.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 50.90 | 12.00 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1008.39s
- **错误信息**: [starry-ci] ERROR: command timed out
