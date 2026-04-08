# StarryOS Daily Test Report

**运行时间**: 2026-04-08T17:17:18.148447008Z → 2026-04-08T19:02:17.968190165Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 27.64s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 335.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2412194.70 | 206.70 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6389733.50 | 547.50 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 373.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.20 | 63.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 909.60 | 165.40 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 26962.80 | 18.00 |
  | System Call Overhead | 4 | 15000.00 | 31941.40 | 21.30 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 328.90s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 20135.60 | 16.20 |
  | Pipe Throughput | 4 | 12440.00 | 45442.60 | 36.50 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3009.80 | 7.50 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4160.50 | 10.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 115.90 | 9.20 |
  | Process Creation | 4 | 126.00 | 233.80 | 18.60 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 843.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2852.40 | 7.20 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8272.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 6405.30 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3733.90 | 9.40 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12911.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6284.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 843.01s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1575.80 | 9.50 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4473.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2920.40 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2775.70 | 16.80 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 8007.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4710.50 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 904.08s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4517.70 | 7.80 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9356.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4826.00 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3671.40 | 6.30 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14558.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5749.00 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.50 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 14.60 | 3.40 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 431.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.20 | 5.20 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.30 | 8.10 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.83s
- **错误信息**: [xkernel-ci] ERROR: command timed out
