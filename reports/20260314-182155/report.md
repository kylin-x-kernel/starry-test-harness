# StarryOS Daily Test Report

**运行时间**: 2026-03-14T16:43:42.691149498Z → 2026-03-14T18:21:55.032435803Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.70s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 340.07s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2424068.50 | 207.70 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5838492.50 | 500.30 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 370.75s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.80 | 64.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 813.20 | 147.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.05s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28165.50 | 18.80 |
  | System Call Overhead | 4 | 15000.00 | 31047.00 | 20.70 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 331.71s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19387.20 | 15.60 |
  | Pipe Throughput | 4 | 12440.00 | 38944.20 | 31.30 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3005.20 | 7.50 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3723.10 | 9.30 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 116.90 | 9.30 |
  | Process Creation | 4 | 126.00 | 237.00 | 18.80 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 854.09s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2283.00 | 5.80 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9015.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4028.40 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4109.10 | 10.40 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 13099.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6251.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 851.87s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1764.50 | 10.70 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4494.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2883.60 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2729.90 | 16.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6745.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3987.80 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 909.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4242.60 | 7.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 8986.80 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3927.40 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3442.90 | 5.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13363.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5599.30 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 18.50 | 4.30 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 428.92s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.00 | 4.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.10 | 7.30 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 580.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.10 | 6.80 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.70 | 4.50 |

