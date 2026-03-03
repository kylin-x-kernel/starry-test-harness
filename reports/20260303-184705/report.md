# StarryOS Daily Test Report

**运行时间**: 2026-03-03T17:01:37.338828695Z → 2026-03-03T18:47:05.018061008Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.89s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 339.06s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2408288.10 | 206.40 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6265779.80 | 536.90 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 372.57s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.90 | 64.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 860.80 | 156.50 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.46s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28174.80 | 18.80 |
  | System Call Overhead | 4 | 15000.00 | 30805.90 | 20.50 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 331.03s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19830.20 | 15.90 |
  | Pipe Throughput | 4 | 12440.00 | 51267.10 | 41.20 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.74s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3092.80 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3807.30 | 9.50 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.79s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 118.30 | 9.40 |
  | Process Creation | 4 | 126.00 | 242.50 | 19.20 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 853.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2182.70 | 5.50 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 6958.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5662.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3848.70 | 9.70 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 9796.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6112.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 847.47s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1376.30 | 8.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4153.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2345.30 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 1950.60 | 11.80 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7017.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4152.50 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 911.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4061.80 | 7.00 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11400.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3834.70 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4017.70 | 6.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14506.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5541.90 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 236.10s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 16.60 | 3.90 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 430.49s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.90 | 4.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.90 | 7.50 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.36s
- **错误信息**: [xkernel-ci] ERROR: command timed out
