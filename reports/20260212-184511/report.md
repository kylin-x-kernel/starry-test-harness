# StarryOS Daily Test Report

**运行时间**: 2026-02-12T17:08:37.676109766Z → 2026-02-12T18:45:11.870757024Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.93s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 334.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2430422.70 | 208.30 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6238981.50 | 534.60 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 371.46s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 353.00 | 64.20 |
  | Double-Precision Whetstone | 4 | 55.00 | 765.70 | 139.20 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.06s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28676.00 | 19.10 |
  | System Call Overhead | 4 | 15000.00 | 30304.10 | 20.20 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.75s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 18650.80 | 15.00 |
  | Pipe Throughput | 4 | 12440.00 | 45622.20 | 36.70 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2977.70 | 7.40 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3761.70 | 9.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.62s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 118.20 | 9.40 |
  | Process Creation | 4 | 126.00 | 240.30 | 19.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 851.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2904.40 | 7.30 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8264.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3117.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3865.80 | 9.80 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12880.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6298.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 848.11s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1372.90 | 8.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4473.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2862.90 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2388.30 | 14.40 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 5562.60 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3403.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 905.67s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4294.50 | 7.40 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9590.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5132.50 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4040.80 | 7.00 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13501.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5673.80 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.47s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 20.60 | 4.80 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 431.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.70 | 4.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.90 | 7.50 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 548.37s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.40 | 7.30 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.70 | 4.40 |

