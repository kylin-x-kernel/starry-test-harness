# StarryOS Daily Test Report

**运行时间**: 2026-03-06T16:55:36.162187889Z → 2026-03-06T18:34:02.391498481Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.42s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 341.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2189826.00 | 187.60 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5387096.90 | 461.60 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 376.69s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 368.60 | 67.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 871.80 | 158.50 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 332.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 26685.70 | 17.80 |
  | System Call Overhead | 4 | 15000.00 | 35439.30 | 23.60 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 331.73s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 17869.60 | 14.40 |
  | Pipe Throughput | 4 | 12440.00 | 38912.50 | 31.30 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 330.64s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2649.00 | 6.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3268.70 | 8.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 236.34s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 108.80 | 8.60 |
  | Process Creation | 4 | 126.00 | 231.20 | 18.30 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 848.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3023.00 | 7.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9229.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4520.30 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4862.70 | 12.30 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 9527.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7552.30 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 852.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1617.60 | 9.80 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4240.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3648.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3040.00 | 18.40 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 8192.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3863.80 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 901.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3941.80 | 6.80 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11380.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5172.10 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4756.60 | 8.20 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14167.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6603.80 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.80s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 9.30 | 2.20 |
  | Execl Throughput | 4 | 43.00 | 12.80 | 3.00 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 429.44s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 19.70 | 4.60 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 30.40 | 7.20 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 593.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.10 | 6.90 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.30 | 3.80 |

