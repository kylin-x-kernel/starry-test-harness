# StarryOS Daily Test Report

**运行时间**: 2026-03-15T16:43:59.289857720Z → 2026-03-15T18:29:12.915831375Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.84s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 339.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2419852.50 | 207.40 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5465335.90 | 468.30 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 371.42s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.30 | 64.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 912.30 | 165.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.32s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28383.10 | 18.90 |
  | System Call Overhead | 4 | 15000.00 | 30803.60 | 20.50 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19961.40 | 16.00 |
  | Pipe Throughput | 4 | 12440.00 | 48049.80 | 38.60 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.33s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2972.90 | 7.40 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3672.60 | 9.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.65s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 117.50 | 9.30 |
  | Process Creation | 4 | 126.00 | 236.30 | 18.80 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 852.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2701.80 | 6.80 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 7457.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4119.10 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3500.10 | 8.80 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12608.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6186.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 846.08s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1428.80 | 8.60 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4241.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2804.60 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2703.00 | 16.30 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7627.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3640.60 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 899.09s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3684.10 | 6.40 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 12257.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4588.70 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3210.70 | 5.50 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14441.80 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5132.00 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.50s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 18.20 | 4.20 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 434.72s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.30 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.70 | 7.70 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1010.84s
- **错误信息**: [xkernel-ci] ERROR: command timed out
