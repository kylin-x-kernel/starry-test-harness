# StarryOS Daily Test Report

**运行时间**: 2026-02-10T17:14:49.429532918Z → 2026-02-10T19:03:25.663447148Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.18s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 367.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2449010.10 | 209.90 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6963390.80 | 596.70 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 397.50s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.60 | 63.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 1077.90 | 196.00 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 355.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28417.10 | 18.90 |
  | System Call Overhead | 4 | 15000.00 | 38266.30 | 25.50 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 354.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19703.30 | 15.80 |
  | Pipe Throughput | 4 | 12440.00 | 57083.80 | 45.90 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 355.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3040.70 | 7.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3710.40 | 9.30 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 246.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 206.60 | 16.40 |
  | Process Creation | 4 | 126.00 | 359.30 | 28.50 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 991.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 625.50 | 1.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 2379.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 1003.40 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 641.90 | 1.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 2495.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 725.30 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 887.60s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 954.40 | 5.80 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 2752.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 1861.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 971.40 | 5.90 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 5227.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 1665.60 | --- |


### ❌ unixbench-fsdisk-test

- **状态**: `fail`
- **耗时**: 1208.23s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 247.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 29.30 | 6.80 |
  | Execl Throughput | 4 | 43.00 | 33.10 | 7.70 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 450.65s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 16.50 | 3.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 17.90 | 4.20 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 622.71s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 1.90 | 3.20 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 0.80 | 1.30 |

