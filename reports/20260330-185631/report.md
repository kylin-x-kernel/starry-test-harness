# StarryOS Daily Test Report

**运行时间**: 2026-03-30T17:07:29.800534851Z → 2026-03-30T18:56:31.623451866Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 11/13
- ❌ **失败**: 2/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 84.6%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.44s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 335.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2186447.30 | 187.40 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5708001.00 | 489.10 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 370.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 366.80 | 66.70 |
  | Double-Precision Whetstone | 4 | 55.00 | 970.10 | 176.40 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 328.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27575.70 | 18.40 |
  | System Call Overhead | 4 | 15000.00 | 38125.30 | 25.40 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 326.76s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 18042.60 | 14.50 |
  | Pipe Throughput | 4 | 12440.00 | 41429.80 | 33.30 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.87s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2683.00 | 6.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3538.00 | 8.80 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 107.80 | 8.60 |
  | Process Creation | 4 | 126.00 | 232.30 | 18.40 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 843.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3887.20 | 9.80 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9250.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4751.80 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4850.50 | 12.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 13123.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7499.60 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 840.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1661.20 | 10.00 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4524.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3919.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2930.00 | 17.70 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 8266.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5297.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 885.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4491.50 | 7.70 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 13414.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 7787.10 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4553.70 | 7.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 15793.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5780.60 | --- |


### ❌ unixbench-execl-test

- **状态**: `fail`
- **耗时**: 509.21s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 432.98s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.20 | 5.20 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 35.20 | 8.30 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1010.29s
- **错误信息**: [xkernel-ci] ERROR: command timed out
