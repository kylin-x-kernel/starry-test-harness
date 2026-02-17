# StarryOS Daily Test Report

**运行时间**: 2026-02-17T17:06:56.659794388Z → 2026-02-17T19:01:07.411031486Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 11/13
- ❌ **失败**: 2/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 84.6%

## 📋 测试用例详情

### ❌ concurrency-load-demo

- **状态**: `fail`
- **耗时**: 1816.28s
- **错误信息**: [daily] X-Kernel command failed

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 336.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2430079.60 | 208.20 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6500520.10 | 557.00 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 376.78s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.40 | 64.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 760.90 | 138.30 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.37s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28606.00 | 19.10 |
  | System Call Overhead | 4 | 15000.00 | 30864.00 | 20.60 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.52s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19595.70 | 15.80 |
  | Pipe Throughput | 4 | 12440.00 | 51061.30 | 41.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3004.60 | 7.50 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3835.40 | 9.60 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 117.70 | 9.30 |
  | Process Creation | 4 | 126.00 | 237.60 | 18.90 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 852.05s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2581.30 | 6.50 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8591.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3521.60 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3668.30 | 9.30 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12136.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5916.00 | --- |


### ❌ unixbench-fsbuffer-test

- **状态**: `fail`
- **耗时**: 41.44s
- **错误信息**: at /rustc/1159e78c4747b02ef996e55082b704c09b970588/library/core/src/panic.rs:223:9 with fp=0xffff0000497bfbf0, ip=0xffff000040450120

### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 913.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3351.70 | 5.80 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 13606.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3981.20 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4089.70 | 7.10 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14953.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5554.40 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 236.50s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.50 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 20.50 | 4.80 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 429.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.60 | 4.80 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.60 | 7.50 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 592.51s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.40 | 7.30 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.70 | 4.40 |

