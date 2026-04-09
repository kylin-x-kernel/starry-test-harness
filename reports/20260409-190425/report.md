# StarryOS Daily Test Report

**运行时间**: 2026-04-09T17:18:44.000700589Z → 2026-04-09T19:04:25.644921363Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 27.02s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 330.92s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2516678.30 | 215.70 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6415152.20 | 549.70 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 368.41s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 335.40 | 61.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 811.60 | 147.60 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 324.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 30746.50 | 20.50 |
  | System Call Overhead | 4 | 15000.00 | 37567.70 | 25.00 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 323.83s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 22974.60 | 18.50 |
  | Pipe Throughput | 4 | 12440.00 | 53633.40 | 43.10 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 324.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3616.10 | 9.00 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4315.90 | 10.80 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 232.47s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 127.90 | 10.20 |
  | Process Creation | 4 | 126.00 | 259.30 | 20.60 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 839.79s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3385.30 | 8.50 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 11897.70 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 6647.30 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4848.90 | 12.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 14686.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7406.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 841.09s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1812.30 | 11.00 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 5390.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 4323.90 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3345.40 | 20.20 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 9568.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5596.50 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 878.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 6372.70 | 11.00 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 13885.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 6272.70 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4076.50 | 7.00 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 15654.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6638.30 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.06s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 11.70 | 2.70 |
  | Execl Throughput | 4 | 43.00 | 17.90 | 4.20 |


### ❌ unixbench-shell1-test

- **状态**: `fail`
- **耗时**: 1009.57s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 540.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.10 | 8.50 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.40 | 5.60 |

