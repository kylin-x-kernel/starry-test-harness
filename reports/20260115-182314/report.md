# StarryOS Daily Test Report

**运行时间**: 2026-01-15T16:46:18.015653809Z → 2026-01-15T18:23:14.273793419Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 15.88s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 335.60s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2384463.00 | 204.30 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6532295.10 | 559.80 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 371.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.60 | 64.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 1040.90 | 189.20 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.86s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28227.20 | 18.80 |
  | System Call Overhead | 4 | 15000.00 | 34669.90 | 23.10 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.32s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19110.20 | 15.40 |
  | Pipe Throughput | 4 | 12440.00 | 41049.60 | 33.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3174.30 | 7.90 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4215.60 | 10.50 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.08s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 122.40 | 9.70 |
  | Process Creation | 4 | 126.00 | 252.40 | 20.00 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 855.22s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2612.60 | 6.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 6230.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3434.20 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 2863.80 | 7.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12463.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 4900.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 849.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1912.80 | 11.60 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3591.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2337.40 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2455.20 | 14.80 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7354.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4198.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 900.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4134.60 | 7.10 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 8938.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4218.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3996.60 | 6.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 11823.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5475.00 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 235.17s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.80 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 16.50 | 3.80 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 432.50s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.40 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.30 | 7.40 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 587.55s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.00 | 6.70 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.20 | 3.70 |

