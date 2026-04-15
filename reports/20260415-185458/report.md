# StarryOS Daily Test Report

**运行时间**: 2026-04-15T17:17:07.279419281Z → 2026-04-15T18:54:58.412006533Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 27.27s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 338.41s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2203163.20 | 188.80 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5980134.50 | 512.40 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 376.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 359.40 | 65.30 |
  | Double-Precision Whetstone | 4 | 55.00 | 1070.90 | 194.70 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 335.75s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 25491.30 | 17.00 |
  | System Call Overhead | 4 | 15000.00 | 33064.00 | 22.00 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 334.02s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 16925.00 | 13.60 |
  | Pipe Throughput | 4 | 12440.00 | 36510.20 | 29.30 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 332.09s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2589.30 | 6.50 |
  | Pipe-based Context Switching | 4 | 4000.00 | 2950.10 | 7.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 236.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 101.90 | 8.10 |
  | Process Creation | 4 | 126.00 | 226.10 | 17.90 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 850.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 4197.00 | 10.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9287.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4650.60 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3805.70 | 9.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 13687.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7089.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 843.59s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1802.90 | 10.90 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4298.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3641.90 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2903.90 | 17.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7545.10 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4742.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 892.65s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4793.20 | 8.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11802.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5974.00 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3049.80 | 5.30 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 15796.80 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6046.20 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 236.92s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 9.00 | 2.10 |
  | Execl Throughput | 4 | 43.00 | 19.10 | 4.40 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 433.80s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.30 | 4.80 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.60 | 8.20 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 559.62s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.70 | 7.80 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.00 | 4.90 |

