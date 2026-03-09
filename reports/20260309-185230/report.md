# StarryOS Daily Test Report

**运行时间**: 2026-03-09T17:04:36.300897877Z → 2026-03-09T18:52:30.764670801Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.85s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 340.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2416568.80 | 207.10 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6078974.60 | 520.90 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 373.48s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.80 | 64.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 810.70 | 147.40 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.42s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28681.30 | 19.10 |
  | System Call Overhead | 4 | 15000.00 | 30871.30 | 20.60 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.79s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19006.00 | 15.30 |
  | Pipe Throughput | 4 | 12440.00 | 49682.50 | 39.90 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.33s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3040.20 | 7.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3845.40 | 9.60 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 118.40 | 9.40 |
  | Process Creation | 4 | 126.00 | 237.50 | 18.80 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 855.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2767.90 | 7.00 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 6487.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3542.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3998.90 | 10.10 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 9878.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6080.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 849.62s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1690.00 | 10.20 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3739.10 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2926.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2642.60 | 16.00 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7469.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4475.40 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 911.94s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4849.40 | 8.40 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10707.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4719.60 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4266.00 | 7.40 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 12012.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5724.90 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.07s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 16.20 | 3.80 |


### ❌ unixbench-shell1-test

- **状态**: `fail`
- **耗时**: 1010.85s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 574.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.60 | 7.70 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.90 | 4.90 |

