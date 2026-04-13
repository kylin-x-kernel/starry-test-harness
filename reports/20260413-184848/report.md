# StarryOS Daily Test Report

**运行时间**: 2026-04-13T17:15:51.884883605Z → 2026-04-13T18:48:48.484788789Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 11/13
- ❌ **失败**: 2/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 84.6%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.42s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 332.37s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2514895.60 | 215.50 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5186114.10 | 444.40 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 365.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 336.40 | 61.20 |
  | Double-Precision Whetstone | 4 | 55.00 | 897.90 | 163.30 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 323.30s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 31091.30 | 20.70 |
  | System Call Overhead | 4 | 15000.00 | 39966.40 | 26.60 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 324.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 22617.50 | 18.20 |
  | Pipe Throughput | 4 | 12440.00 | 50742.40 | 40.80 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 326.72s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3470.90 | 8.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4895.70 | 12.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 233.65s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 126.80 | 10.10 |
  | Process Creation | 4 | 126.00 | 257.80 | 20.50 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 839.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3565.90 | 9.00 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 10025.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 6871.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4762.10 | 12.00 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12645.70 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6442.30 | --- |


### ❌ unixbench-fsbuffer-test

- **状态**: `fail`
- **耗时**: 41.48s
- **错误信息**: at /rustc/1159e78c4747b02ef996e55082b704c09b970588/library/core/src/panic.rs:223:9 with fp=0xffff0000495ffbf0, ip=0xffff000040465120

### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 882.74s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3771.40 | 6.50 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 13606.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5461.40 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4839.00 | 8.30 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 16384.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6598.40 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 230.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 11.60 | 2.70 |
  | Execl Throughput | 4 | 43.00 | 18.30 | 4.30 |


### ❌ unixbench-shell1-test

- **状态**: `fail`
- **耗时**: 1009.21s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 570.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.10 | 8.60 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.30 | 5.60 |

