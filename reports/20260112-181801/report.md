# StarryOS Daily Test Report

**运行时间**: 2026-01-12T16:38:31.640618381Z → 2026-01-12T18:18:01.191665942Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 13.84s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 311.25s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 3678956.90 | 315.20 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 8278266.10 | 709.40 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 361.48s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 675.20 | 122.80 |
  | Double-Precision Whetstone | 4 | 55.00 | 1507.60 | 274.10 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 303.88s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 50235.00 | 33.50 |
  | System Call Overhead | 4 | 15000.00 | 48987.20 | 32.70 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 303.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 34382.70 | 27.60 |
  | Pipe Throughput | 4 | 12440.00 | 62967.20 | 50.60 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 303.02s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 61.00 | 0.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 462.40 | 1.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 222.79s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.50 | 7.90 |
  | Process Creation | 4 | 126.00 | 262.40 | 20.80 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 817.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 7604.90 | 19.20 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 25513.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 15813.40 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 5705.40 | 14.40 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 16905.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 8830.70 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 812.11s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 4029.50 | 24.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 10002.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 7190.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3529.50 | 21.30 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 9661.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5859.80 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 856.92s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 11644.00 | 20.10 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 37327.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 19930.50 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 5034.80 | 8.70 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 17873.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6845.60 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 222.00s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 18.60 | 4.30 |
  | Execl Throughput | 4 | 43.00 | 25.30 | 5.90 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 414.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 40.40 | 9.50 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 49.20 | 11.60 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.15s
- **错误信息**: [starry-ci] ERROR: command timed out
