# StarryOS Daily Test Report

**运行时间**: 2026-04-10T16:59:55.940260687Z → 2026-04-10T18:37:32.564028943Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.81s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 332.40s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2440258.80 | 209.10 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5578365.50 | 478.00 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 367.06s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 350.70 | 63.80 |
  | Double-Precision Whetstone | 4 | 55.00 | 945.50 | 171.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 327.89s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27709.60 | 18.50 |
  | System Call Overhead | 4 | 15000.00 | 32208.30 | 21.50 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 326.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 20158.30 | 16.20 |
  | Pipe Throughput | 4 | 12440.00 | 40661.60 | 32.70 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 326.19s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3154.50 | 7.90 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3745.40 | 9.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 234.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 117.90 | 9.40 |
  | Process Creation | 4 | 126.00 | 238.60 | 18.90 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 846.14s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3176.50 | 8.00 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8205.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4666.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4083.50 | 10.30 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 11495.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6337.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 845.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1892.10 | 11.40 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4373.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3239.30 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2674.30 | 16.20 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 8083.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4367.70 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 894.90s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5602.80 | 9.70 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 12541.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 6188.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3267.60 | 5.60 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14378.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5665.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.02s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 16.80 | 3.90 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 436.19s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.30 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.70 | 8.20 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 589.87s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.80 | 8.10 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.20 | 5.30 |

