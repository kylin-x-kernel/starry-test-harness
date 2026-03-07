# StarryOS Daily Test Report

**运行时间**: 2026-03-07T16:39:37.295309401Z → 2026-03-07T18:18:27.748177397Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.88s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 339.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2424780.80 | 207.80 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6090735.40 | 521.90 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 376.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.60 | 64.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 813.50 | 147.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27344.70 | 18.20 |
  | System Call Overhead | 4 | 15000.00 | 33159.90 | 22.10 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 328.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19979.60 | 16.10 |
  | Pipe Throughput | 4 | 12440.00 | 44197.50 | 35.50 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3000.40 | 7.50 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3819.30 | 9.50 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.78s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 118.90 | 9.40 |
  | Process Creation | 4 | 126.00 | 243.40 | 19.30 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 856.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2282.60 | 5.80 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 10024.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3702.70 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3900.00 | 9.80 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12086.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5927.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 851.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1614.30 | 9.80 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4653.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3006.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2650.50 | 16.00 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7400.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3559.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 906.01s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3162.00 | 5.50 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 13826.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3728.40 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3607.00 | 6.20 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 10680.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5029.80 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.46s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.50 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 18.90 | 4.40 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 431.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.60 | 5.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.90 | 7.80 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 612.76s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.30 | 7.10 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.80 | 4.70 |

