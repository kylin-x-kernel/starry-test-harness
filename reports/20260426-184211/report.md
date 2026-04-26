# StarryOS Daily Test Report

**运行时间**: 2026-04-26T16:57:08.463656772Z → 2026-04-26T18:42:11.547484938Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.44s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 338.34s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2420684.70 | 207.40 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6061438.70 | 519.40 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 369.30s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 345.60 | 62.80 |
  | Double-Precision Whetstone | 4 | 55.00 | 747.20 | 135.80 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 328.79s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 25222.00 | 16.80 |
  | System Call Overhead | 4 | 15000.00 | 31836.00 | 21.20 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.10s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19490.10 | 15.70 |
  | Pipe Throughput | 4 | 12440.00 | 48635.90 | 39.10 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3153.20 | 7.90 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4158.60 | 10.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 236.03s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 114.10 | 9.10 |
  | Process Creation | 4 | 126.00 | 230.60 | 18.30 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 851.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2955.40 | 7.50 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9096.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5963.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3636.90 | 9.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12892.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6176.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 844.89s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 2043.40 | 12.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4796.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2799.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2721.50 | 16.40 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7816.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4392.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 902.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4104.80 | 7.10 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11472.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4463.50 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3774.50 | 6.50 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 11710.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5395.00 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.40 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 13.70 | 3.20 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 432.92s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.20 | 5.20 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.30 | 8.10 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1010.00s
- **错误信息**: [xkernel-ci] ERROR: command timed out
