# StarryOS Daily Test Report

**运行时间**: 2026-03-04T16:59:10.577881032Z → 2026-03-04T18:37:51.247100Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 22.13s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 339.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2410320.10 | 206.50 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6115108.60 | 524.00 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 373.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.10 | 64.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 1020.10 | 185.50 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 331.94s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27313.60 | 18.20 |
  | System Call Overhead | 4 | 15000.00 | 31890.70 | 21.30 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 333.16s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19183.80 | 15.40 |
  | Pipe Throughput | 4 | 12440.00 | 46422.90 | 37.30 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 331.32s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2983.40 | 7.50 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3884.20 | 9.70 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 237.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 114.40 | 9.10 |
  | Process Creation | 4 | 126.00 | 232.30 | 18.40 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 857.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2806.70 | 7.10 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 6806.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5494.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3288.70 | 8.30 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12210.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5664.60 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 849.25s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 2055.70 | 12.40 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4081.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2500.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2738.90 | 16.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7771.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4387.70 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 916.71s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4217.80 | 7.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11151.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3884.60 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3762.20 | 6.50 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13986.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 4829.90 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.50 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 15.20 | 3.50 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 436.40s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.00 | 4.70 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 30.10 | 7.10 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 584.16s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.10 | 6.90 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.50 | 4.20 |

