# StarryOS Daily Test Report

**运行时间**: 2026-02-08T16:43:01.859171440Z → 2026-02-08T18:40:16.866693154Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 11/13
- ❌ **失败**: 2/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 84.6%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.31s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 365.22s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2435084.30 | 208.70 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 7213495.10 | 618.10 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 397.42s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.10 | 64.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 1079.70 | 196.30 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 356.03s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28235.60 | 18.80 |
  | System Call Overhead | 4 | 15000.00 | 38679.00 | 25.80 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 355.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19517.90 | 15.70 |
  | Pipe Throughput | 4 | 12440.00 | 52655.40 | 42.30 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 354.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2971.30 | 7.40 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4031.20 | 10.10 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 241.01s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 204.50 | 16.20 |
  | Process Creation | 4 | 126.00 | 357.30 | 28.40 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 956.97s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 635.90 | 1.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 2196.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 1102.70 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 685.00 | 1.70 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 2965.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 763.70 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 898.80s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1031.30 | 6.20 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3246.10 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 1748.40 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 1295.70 | 7.80 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 5383.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 1654.40 | --- |


### ❌ unixbench-fsdisk-test

- **状态**: `fail`
- **耗时**: 1209.43s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 243.37s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 29.30 | 6.80 |
  | Execl Throughput | 4 | 43.00 | 33.00 | 7.70 |


### ❌ unixbench-shell1-test

- **状态**: `fail`
- **耗时**: 1007.90s
- **错误信息**: [115.010414 1:269 rsext4::file:871] Parse inode blocks failed (unlink free): Corrupted

### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 617.00s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 1.80 | 3.00 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 0.70 | 1.20 |

