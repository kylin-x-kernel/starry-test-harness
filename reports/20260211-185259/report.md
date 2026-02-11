# StarryOS Daily Test Report

**运行时间**: 2026-02-11T17:14:48.281656573Z → 2026-02-11T18:52:59.941555071Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.42s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 340.54s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2413887.40 | 206.80 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6414494.10 | 549.70 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 371.42s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.20 | 64.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 859.80 | 156.30 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 332.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28196.10 | 18.80 |
  | System Call Overhead | 4 | 15000.00 | 35313.20 | 23.50 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 332.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19612.30 | 15.80 |
  | Pipe Throughput | 4 | 12440.00 | 52903.10 | 42.50 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 330.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2875.40 | 7.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3942.10 | 9.90 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 236.43s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 114.70 | 9.10 |
  | Process Creation | 4 | 126.00 | 242.40 | 19.20 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 865.99s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 1854.70 | 4.70 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 5014.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 2756.20 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3449.30 | 8.70 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 10186.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 4948.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 863.28s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1361.20 | 8.20 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3159.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 1757.90 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2203.00 | 13.30 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6506.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 2833.10 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 946.01s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3289.80 | 5.70 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11686.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3606.70 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3166.20 | 5.50 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 12759.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 4576.90 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 235.44s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.30 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 14.80 | 3.40 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 429.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.00 | 4.70 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 30.20 | 7.10 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 562.50s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.20 | 7.00 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.80 | 4.60 |

