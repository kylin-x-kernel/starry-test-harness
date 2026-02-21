# StarryOS Daily Test Report

**运行时间**: 2026-02-21T16:41:00.195080178Z → 2026-02-21T18:19:10.721488782Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.27s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 336.79s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2435853.00 | 208.70 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5472864.80 | 469.00 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 371.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.60 | 64.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 861.90 | 156.70 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 328.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28165.30 | 18.80 |
  | System Call Overhead | 4 | 15000.00 | 36178.90 | 24.10 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19111.50 | 15.40 |
  | Pipe Throughput | 4 | 12440.00 | 43166.10 | 34.70 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.94s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3042.40 | 7.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3959.70 | 9.90 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.09s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 121.70 | 9.70 |
  | Process Creation | 4 | 126.00 | 252.00 | 20.00 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 853.97s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2094.70 | 5.30 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 5275.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 2872.70 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3076.40 | 7.80 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12421.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5693.70 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 863.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1132.60 | 6.80 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3289.10 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2381.40 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2439.20 | 14.70 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 5670.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4065.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 931.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3452.80 | 6.00 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 6926.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4749.20 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3122.00 | 5.40 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 11763.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 3888.10 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.90 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 18.40 | 4.30 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 433.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.50 | 5.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.60 | 7.40 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 599.92s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.10 | 6.80 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.70 | 4.50 |

