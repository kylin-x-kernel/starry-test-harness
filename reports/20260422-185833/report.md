# StarryOS Daily Test Report

**运行时间**: 2026-04-22T17:12:31.635777291Z → 2026-04-22T18:58:33.676405448Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 25.36s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 330.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2524801.30 | 216.30 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6831788.70 | 585.40 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 363.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 335.10 | 60.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 890.20 | 161.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 322.46s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 31888.10 | 21.30 |
  | System Call Overhead | 4 | 15000.00 | 40027.50 | 26.70 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 323.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 22650.20 | 18.20 |
  | Pipe Throughput | 4 | 12440.00 | 51577.30 | 41.50 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 321.79s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3705.20 | 9.30 |
  | Pipe-based Context Switching | 4 | 4000.00 | 5060.20 | 12.70 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 232.41s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 127.60 | 10.10 |
  | Process Creation | 4 | 126.00 | 258.80 | 20.50 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 839.61s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2970.30 | 7.50 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9259.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4794.90 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4719.50 | 11.90 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 14768.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7338.30 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 836.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1981.70 | 12.00 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 5201.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3532.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3351.50 | 20.30 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 9342.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5424.80 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 878.83s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4669.70 | 8.10 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 14330.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 7975.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4547.70 | 7.80 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 16620.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6495.20 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 230.61s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 11.70 | 2.70 |
  | Execl Throughput | 4 | 43.00 | 18.10 | 4.20 |


### ❌ unixbench-shell1-test

- **状态**: `fail`
- **耗时**: 1009.91s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 579.05s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.00 | 8.30 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.70 | 6.20 |

