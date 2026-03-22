# StarryOS Daily Test Report

**运行时间**: 2026-03-22T16:42:10.422940094Z → 2026-03-22T18:19:53.179957199Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.52s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 339.34s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2437032.30 | 208.80 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6127674.50 | 525.10 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 370.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.20 | 63.80 |
  | Double-Precision Whetstone | 4 | 55.00 | 861.40 | 156.60 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.09s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27956.70 | 18.60 |
  | System Call Overhead | 4 | 15000.00 | 30987.00 | 20.70 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.42s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19777.60 | 15.90 |
  | Pipe Throughput | 4 | 12440.00 | 42645.00 | 34.30 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3039.70 | 7.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3965.10 | 9.90 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.69s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 119.30 | 9.50 |
  | Process Creation | 4 | 126.00 | 245.10 | 19.50 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 854.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3220.20 | 8.10 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9258.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4397.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3559.10 | 9.00 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 13188.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6346.30 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 848.25s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1352.50 | 8.20 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3938.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2856.70 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2761.50 | 16.70 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 8056.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4591.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 905.50s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 2695.10 | 4.60 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10818.80 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5169.50 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4222.50 | 7.30 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 12464.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5696.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 14.60 | 3.40 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 430.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.40 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.80 | 7.70 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 556.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.40 | 7.30 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.10 | 5.10 |

