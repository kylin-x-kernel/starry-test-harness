# StarryOS Daily Test Report

**运行时间**: 2026-03-19T17:06:45.282860307Z → 2026-03-19T18:52:19.630070159Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.38s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 342.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2199296.20 | 188.50 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5085586.80 | 435.80 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 372.79s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 368.60 | 67.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 970.30 | 176.40 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 333.09s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27357.10 | 18.20 |
  | System Call Overhead | 4 | 15000.00 | 36525.20 | 24.40 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 332.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 17829.40 | 14.30 |
  | Pipe Throughput | 4 | 12440.00 | 38502.10 | 31.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 332.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2622.20 | 6.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3175.70 | 7.90 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 238.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 102.10 | 8.10 |
  | Process Creation | 4 | 126.00 | 225.50 | 17.90 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 857.32s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3153.00 | 8.00 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 7294.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 6034.20 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 2702.80 | 6.80 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 13474.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7187.70 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 845.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1573.80 | 9.50 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4156.60 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3824.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2234.80 | 13.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7520.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4635.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 901.17s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4773.80 | 8.20 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11847.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5117.30 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4010.20 | 6.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 10833.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6101.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 237.78s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 9.00 | 2.10 |
  | Execl Throughput | 4 | 43.00 | 13.30 | 3.10 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 433.94s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 19.10 | 4.50 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 30.20 | 7.10 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.98s
- **错误信息**: [xkernel-ci] ERROR: command timed out
