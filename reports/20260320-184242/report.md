# StarryOS Daily Test Report

**运行时间**: 2026-03-20T16:57:31.900866269Z → 2026-03-20T18:42:42.212126844Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.55s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 336.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2419519.10 | 207.30 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 7053522.10 | 604.40 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 371.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 354.00 | 64.40 |
  | Double-Precision Whetstone | 4 | 55.00 | 814.60 | 148.10 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27557.60 | 18.40 |
  | System Call Overhead | 4 | 15000.00 | 32879.00 | 21.90 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.44s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19319.50 | 15.50 |
  | Pipe Throughput | 4 | 12440.00 | 41734.50 | 33.50 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.56s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2988.90 | 7.50 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3664.80 | 9.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 118.30 | 9.40 |
  | Process Creation | 4 | 126.00 | 236.60 | 18.80 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 857.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2236.00 | 5.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 6689.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4411.30 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3911.50 | 9.90 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12617.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5880.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 847.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1504.50 | 9.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4040.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2646.60 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2352.60 | 14.20 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7945.10 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3838.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 902.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4054.20 | 7.00 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 14122.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3810.70 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3717.40 | 6.40 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13954.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5557.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.05s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 18.50 | 4.30 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 428.85s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.80 | 4.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.20 | 7.60 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1010.69s
- **错误信息**: [xkernel-ci] ERROR: command timed out
