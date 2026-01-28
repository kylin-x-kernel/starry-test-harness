# StarryOS Daily Test Report

**运行时间**: 2026-01-28T16:51:11.265762850Z → 2026-01-28T18:28:57.110471109Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 13.95s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 337.40s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2450086.50 | 209.90 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 7155097.60 | 613.10 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 369.44s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 353.00 | 64.20 |
  | Double-Precision Whetstone | 4 | 55.00 | 1128.20 | 205.10 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 331.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 33029.50 | 22.00 |
  | System Call Overhead | 4 | 15000.00 | 36902.80 | 24.60 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.06s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 20826.50 | 16.70 |
  | Pipe Throughput | 4 | 12440.00 | 45282.30 | 36.40 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.51s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3086.40 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4425.30 | 11.10 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 122.80 | 9.70 |
  | Process Creation | 4 | 126.00 | 254.40 | 20.20 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 871.17s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 1808.70 | 4.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 6089.70 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3706.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 2811.00 | 7.10 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 8961.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 4855.20 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 851.22s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1504.40 | 9.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4322.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2238.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 1667.30 | 10.10 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 4960.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3138.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 931.75s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3465.70 | 6.00 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10555.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 7060.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3021.20 | 5.20 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13644.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 4854.40 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.46s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.80 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 14.80 | 3.40 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 431.32s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.30 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.10 | 7.30 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 597.55s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.10 | 6.80 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.20 | 3.70 |

