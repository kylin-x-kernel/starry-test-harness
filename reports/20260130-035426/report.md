# StarryOS Daily Test Report

**运行时间**: 2026-01-30T02:16:34.906095114Z → 2026-01-30T03:54:26.073690320Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 13.93s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 336.59s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2413963.50 | 206.90 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5888987.80 | 504.60 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 373.05s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 349.40 | 63.50 |
  | Double-Precision Whetstone | 4 | 55.00 | 867.20 | 157.70 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 328.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 33801.70 | 22.50 |
  | System Call Overhead | 4 | 15000.00 | 38433.50 | 25.60 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 328.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 21432.60 | 17.20 |
  | Pipe Throughput | 4 | 12440.00 | 48205.70 | 38.80 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.67s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3278.40 | 8.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4001.40 | 10.00 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.32s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 125.00 | 9.90 |
  | Process Creation | 4 | 126.00 | 259.10 | 20.60 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 856.14s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2078.50 | 5.20 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 6116.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3655.60 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3739.90 | 9.40 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12183.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5972.70 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 852.40s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1932.90 | 11.70 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4399.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2883.20 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2574.90 | 15.60 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7322.10 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4091.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 928.60s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5484.40 | 9.50 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 8546.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3921.40 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3999.60 | 6.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14782.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5089.30 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 232.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.80 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 18.60 | 4.30 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 429.76s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.60 | 5.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.70 | 7.70 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 614.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.10 | 6.80 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.10 | 3.50 |

