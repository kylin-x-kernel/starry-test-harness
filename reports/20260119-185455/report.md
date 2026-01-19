# StarryOS Daily Test Report

**运行时间**: 2026-01-19T16:40:53.370026658Z → 2026-01-19T18:54:55.111503402Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 11/13
- ❌ **失败**: 2/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 84.6%

## 📋 测试用例详情

### ❌ concurrency-load-demo

- **状态**: `fail`
- **耗时**: 1815.77s
- **错误信息**: [daily] StarryOS command failed

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 336.33s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2397324.00 | 205.40 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5853090.40 | 501.60 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 368.90s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 349.70 | 63.60 |
  | Double-Precision Whetstone | 4 | 55.00 | 812.80 | 147.80 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.87s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27654.00 | 18.40 |
  | System Call Overhead | 4 | 15000.00 | 35374.50 | 23.60 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.07s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 18872.20 | 15.20 |
  | Pipe Throughput | 4 | 12440.00 | 48533.60 | 39.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3096.20 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3894.30 | 9.70 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.89s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 122.40 | 9.70 |
  | Process Creation | 4 | 126.00 | 252.70 | 20.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 856.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2513.50 | 6.30 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 5852.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3054.90 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3399.70 | 8.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 11263.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 4903.20 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 849.52s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1510.20 | 9.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4215.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2922.10 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2394.00 | 14.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6786.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3930.60 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 916.37s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 2440.70 | 4.20 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9103.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3080.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 2889.70 | 5.00 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 11697.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5048.40 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.80 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 16.80 | 3.90 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 429.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.20 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.90 | 7.50 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1008.21s
- **错误信息**: [starry-ci] ERROR: command timed out
