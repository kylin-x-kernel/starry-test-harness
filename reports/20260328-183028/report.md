# StarryOS Daily Test Report

**运行时间**: 2026-03-28T16:45:25.413721045Z → 2026-03-28T18:30:28.254909355Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 27.45s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 337.22s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2431964.10 | 208.40 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5593613.50 | 479.30 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 369.03s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 349.20 | 63.50 |
  | Double-Precision Whetstone | 4 | 55.00 | 909.70 | 165.40 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 328.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28043.70 | 18.70 |
  | System Call Overhead | 4 | 15000.00 | 32239.20 | 21.50 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 328.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 20587.40 | 16.50 |
  | Pipe Throughput | 4 | 12440.00 | 43602.30 | 35.10 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.69s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3078.00 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3781.70 | 9.50 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 115.30 | 9.20 |
  | Process Creation | 4 | 126.00 | 239.30 | 19.00 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 850.72s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2561.00 | 6.50 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 10379.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3876.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3305.70 | 8.30 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12775.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6081.30 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 844.71s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1950.30 | 11.80 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4333.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2850.40 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2417.10 | 14.60 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7873.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3924.20 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 904.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3654.40 | 6.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 14054.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4567.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3891.50 | 6.70 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14561.80 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5597.80 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.71s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.50 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 14.50 | 3.40 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 431.33s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.30 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.90 | 8.20 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1010.33s
- **错误信息**: [xkernel-ci] ERROR: command timed out
