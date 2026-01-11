# StarryOS Daily Test Report

**运行时间**: 2026-01-11T16:35:41.367999643Z → 2026-01-11T18:50:36.682811037Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 10/13
- ❌ **失败**: 3/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 76.9%

## 📋 测试用例详情

### ❌ concurrency-load-demo

- **状态**: `fail`
- **耗时**: 1815.73s
- **错误信息**: [daily] StarryOS command failed

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 309.51s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 5270087.30 | 451.60 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 9651448.80 | 827.00 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 356.09s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 762.00 | 138.50 |
  | Double-Precision Whetstone | 4 | 55.00 | 1594.60 | 289.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 301.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 53643.30 | 35.80 |
  | System Call Overhead | 4 | 15000.00 | 51386.60 | 34.30 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 301.90s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 35719.20 | 28.70 |
  | Pipe Throughput | 4 | 12440.00 | 59793.20 | 48.10 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 300.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 52.80 | 0.10 |
  | Pipe-based Context Switching | 4 | 4000.00 | 431.10 | 1.10 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 221.59s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.50 | 7.90 |
  | Process Creation | 4 | 126.00 | 260.30 | 20.70 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 814.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 7741.50 | 19.50 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 28715.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 18135.40 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 6008.40 | 15.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 17574.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 9556.90 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 809.76s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 4026.00 | 24.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 10056.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 7266.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3717.80 | 22.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 9679.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 6465.10 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 914.92s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 12042.00 | 20.80 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 25394.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 23217.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4693.50 | 8.10 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 4701.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5958.70 | --- |


### ❌ unixbench-execl-test

- **状态**: `fail`
- **耗时**: 509.42s
- **错误信息**: [starry-ci] ERROR: command timed out

### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 410.56s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 42.70 | 10.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 37.30 | 8.80 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1008.45s
- **错误信息**: [starry-ci] ERROR: command timed out
