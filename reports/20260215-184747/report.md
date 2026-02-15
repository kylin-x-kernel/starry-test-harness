# StarryOS Daily Test Report

**运行时间**: 2026-02-15T16:41:48.287283596Z → 2026-02-15T18:47:47.341979341Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ❌ concurrency-load-demo

- **状态**: `fail`
- **耗时**: 1815.82s
- **错误信息**: [daily] X-Kernel command failed

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 331.43s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2522050.10 | 216.10 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6461295.90 | 553.70 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 368.76s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 337.90 | 61.40 |
  | Double-Precision Whetstone | 4 | 55.00 | 765.50 | 139.20 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 326.44s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 31032.40 | 20.70 |
  | System Call Overhead | 4 | 15000.00 | 34420.60 | 22.90 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 325.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 21940.60 | 17.60 |
  | Pipe Throughput | 4 | 12440.00 | 45199.50 | 36.30 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 324.68s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3529.70 | 8.80 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4371.90 | 10.90 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 232.65s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 126.30 | 10.00 |
  | Process Creation | 4 | 126.00 | 254.50 | 20.20 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 847.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3261.90 | 8.20 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 10633.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 6293.40 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4604.50 | 11.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 11205.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6992.30 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 843.03s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 2008.60 | 12.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4018.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2489.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2987.50 | 18.10 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7301.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5089.50 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 900.75s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3001.30 | 5.20 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 14076.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4405.50 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4426.50 | 7.60 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 12200.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5998.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.40s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 11.80 | 2.70 |
  | Execl Throughput | 4 | 43.00 | 17.30 | 4.00 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 426.17s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.60 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 33.00 | 7.80 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 553.05s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.40 | 7.30 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.00 | 5.10 |

