# StarryOS Daily Test Report

**运行时间**: 2026-03-10T17:04:04.358541080Z → 2026-03-10T18:42:07.622098100Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.66s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 335.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2408696.40 | 206.40 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6658214.80 | 570.50 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 370.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 354.30 | 64.40 |
  | Double-Precision Whetstone | 4 | 55.00 | 857.20 | 155.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28669.50 | 19.10 |
  | System Call Overhead | 4 | 15000.00 | 31853.90 | 21.20 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 328.86s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19717.80 | 15.90 |
  | Pipe Throughput | 4 | 12440.00 | 45223.30 | 36.40 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.95s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2974.50 | 7.40 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4214.20 | 10.50 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 236.46s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 117.70 | 9.30 |
  | Process Creation | 4 | 126.00 | 240.70 | 19.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 854.95s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2234.50 | 5.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 10176.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4349.90 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3939.80 | 9.90 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12369.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6357.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 848.14s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1434.50 | 8.70 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4159.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2622.30 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2712.60 | 16.40 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 8017.10 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3855.30 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 909.74s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 2984.40 | 5.10 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10456.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4037.70 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3756.30 | 6.50 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14680.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5792.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.28s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 16.40 | 3.80 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 430.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.20 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.40 | 7.60 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 575.85s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.70 | 7.80 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.10 | 5.10 |

