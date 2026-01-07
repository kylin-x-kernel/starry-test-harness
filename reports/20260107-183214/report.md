# StarryOS Daily Test Report

**运行时间**: 2026-01-07T16:41:30.056639082Z → 2026-01-07T18:32:14.643401248Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 10/13
- ❌ **失败**: 3/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 76.9%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 15.73s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 309.47s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 3682573.60 | 315.60 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 8195239.20 | 702.20 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 369.95s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 676.30 | 123.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 1535.40 | 279.20 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 302.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 56717.60 | 37.80 |
  | System Call Overhead | 4 | 15000.00 | 45198.00 | 30.10 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 302.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 45207.20 | 36.30 |
  | Pipe Throughput | 4 | 12440.00 | 72848.50 | 58.60 |


### ❌ unixbench-context1-test

- **状态**: `fail`
- **耗时**: 609.47s
- **错误信息**: [starry-ci] ERROR: command timed out

### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 222.05s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.50 | 7.90 |
  | Process Creation | 4 | 126.00 | 269.50 | 21.40 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 817.06s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 8139.80 | 20.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 28885.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 17950.20 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 5722.60 | 14.50 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 18479.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 9241.80 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 810.50s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 4682.50 | 28.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 11684.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 8284.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3969.00 | 24.00 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 10594.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 6890.20 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 852.03s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 13094.00 | 22.60 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 41017.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 21891.50 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3746.70 | 6.50 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 16766.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 7318.00 | --- |


### ❌ unixbench-execl-test

- **状态**: `fail`
- **耗时**: 508.46s
- **错误信息**: [starry-ci] ERROR: command timed out

### ❌ unixbench-shell1-test

- **状态**: `fail`
- **耗时**: 1008.30s
- **错误信息**: [starry-ci] ERROR: command timed out

### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 499.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.40 | 9.10 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.70 | 4.50 |

