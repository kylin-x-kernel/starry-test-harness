# StarryOS Daily Test Report

**运行时间**: 2026-04-07T17:12:38.794949946Z → 2026-04-07T18:46:19.989840695Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 23.02s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 326.40s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 3273030.60 | 280.50 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 8677392.70 | 743.60 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 351.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 429.30 | 78.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 987.60 | 179.60 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 313.87s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 40599.40 | 27.10 |
  | System Call Overhead | 4 | 15000.00 | 51420.90 | 34.30 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 313.56s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 29974.40 | 24.10 |
  | Pipe Throughput | 4 | 12440.00 | 84485.90 | 67.90 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 312.97s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 4623.10 | 11.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 5627.60 | 14.10 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 230.14s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 164.40 | 13.00 |
  | Process Creation | 4 | 126.00 | 332.40 | 26.40 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 830.50s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3768.90 | 9.50 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 12307.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5709.70 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 6199.30 | 15.70 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 19034.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 9698.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 824.01s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 3287.40 | 19.90 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 6957.60 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 4015.80 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 4259.60 | 25.70 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 11921.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 7280.50 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 857.53s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 6486.30 | 11.20 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 16172.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 10147.40 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 5737.50 | 9.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 21141.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 8679.70 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 227.59s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 14.90 | 3.50 |
  | Execl Throughput | 4 | 43.00 | 19.30 | 4.50 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 419.37s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 30.30 | 7.20 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 47.00 | 11.10 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 527.75s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 6.40 | 10.70 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 4.90 | 8.20 |

