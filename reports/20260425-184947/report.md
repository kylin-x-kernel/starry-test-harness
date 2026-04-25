# StarryOS Daily Test Report

**运行时间**: 2026-04-25T16:56:16.216206919Z → 2026-04-25T18:49:47.190931923Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 11/13
- ❌ **失败**: 2/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 84.6%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.21s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 329.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2514580.10 | 215.50 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6459722.60 | 553.50 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 366.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 336.70 | 61.20 |
  | Double-Precision Whetstone | 4 | 55.00 | 907.70 | 165.00 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 323.11s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 30225.30 | 20.20 |
  | System Call Overhead | 4 | 15000.00 | 35998.10 | 24.00 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 325.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 21920.00 | 17.60 |
  | Pipe Throughput | 4 | 12440.00 | 68371.10 | 55.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 323.59s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3671.10 | 9.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4310.90 | 10.80 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 233.25s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 126.70 | 10.10 |
  | Process Creation | 4 | 126.00 | 258.30 | 20.50 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 841.59s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3531.50 | 8.90 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 10212.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5807.30 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4958.20 | 12.50 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 11793.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7416.10 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 841.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 2217.60 | 13.40 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 5036.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3114.40 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3283.90 | 19.80 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 9061.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5266.70 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 881.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4605.80 | 7.90 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 13037.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 6357.40 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4738.40 | 8.20 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 16279.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6562.60 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.22s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 11.60 | 2.70 |
  | Execl Throughput | 4 | 43.00 | 17.10 | 4.00 |


### ❌ unixbench-shell1-test

- **状态**: `fail`
- **耗时**: 1009.20s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1010.25s
- **错误信息**: [xkernel-ci] ERROR: command timed out
