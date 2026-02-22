# StarryOS Daily Test Report

**运行时间**: 2026-02-22T16:41:52.911115467Z → 2026-02-22T18:18:48.440465121Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.05s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 339.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2406324.50 | 206.20 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5823760.90 | 499.00 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 369.71s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.60 | 63.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 1078.00 | 196.00 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.07s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28358.80 | 18.90 |
  | System Call Overhead | 4 | 15000.00 | 36957.80 | 24.60 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 328.46s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 20360.40 | 16.40 |
  | Pipe Throughput | 4 | 12440.00 | 43297.40 | 34.80 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 326.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3227.50 | 8.10 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4040.00 | 10.10 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 233.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 121.80 | 9.70 |
  | Process Creation | 4 | 126.00 | 252.90 | 20.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 862.88s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2047.80 | 5.20 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 6936.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5405.80 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 2624.30 | 6.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 8836.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5259.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 848.95s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1300.50 | 7.90 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4025.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2870.20 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2474.00 | 14.90 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 5620.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3891.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 919.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 2680.30 | 4.60 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9856.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4098.00 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3592.50 | 6.20 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 11340.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5357.00 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 235.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.80 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 19.10 | 4.40 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 426.52s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.80 | 4.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.60 | 7.50 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 550.87s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.50 | 7.40 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.70 | 4.50 |

