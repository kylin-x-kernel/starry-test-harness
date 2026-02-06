# StarryOS Daily Test Report

**运行时间**: 2026-02-06T03:23:52.706044018Z → 2026-02-06T05:13:28.814648989Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.95s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 366.49s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2428128.70 | 208.10 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6109487.60 | 523.50 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 398.99s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 353.30 | 64.20 |
  | Double-Precision Whetstone | 4 | 55.00 | 1078.20 | 196.00 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 357.49s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28558.80 | 19.00 |
  | System Call Overhead | 4 | 15000.00 | 35731.80 | 23.80 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 354.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19930.00 | 16.00 |
  | Pipe Throughput | 4 | 12440.00 | 39636.10 | 31.90 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 353.64s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3078.50 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4414.30 | 11.00 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 246.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 199.90 | 15.90 |
  | Process Creation | 4 | 126.00 | 341.20 | 27.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 995.25s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 916.90 | 2.30 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 2436.70 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 955.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 637.00 | 1.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 2339.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 599.30 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 884.03s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1432.30 | 8.70 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 2868.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 1740.20 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 1265.00 | 7.60 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 5055.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 1627.00 | --- |


### ❌ unixbench-fsdisk-test

- **状态**: `fail`
- **耗时**: 1209.41s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 243.51s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 29.00 | 6.70 |
  | Execl Throughput | 4 | 43.00 | 33.70 | 7.80 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 454.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 16.70 | 3.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 18.60 | 4.40 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 679.30s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 1.90 | 3.20 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 1.10 | 1.80 |

