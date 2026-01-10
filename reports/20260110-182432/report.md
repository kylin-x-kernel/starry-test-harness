# StarryOS Daily Test Report

**运行时间**: 2026-01-10T16:35:04.912667192Z → 2026-01-10T18:24:31.989557561Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 10/13
- ❌ **失败**: 3/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 76.9%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.54s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 312.75s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 3657535.50 | 313.40 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 8459345.70 | 724.90 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 365.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 671.60 | 122.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 1496.40 | 272.10 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 303.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 49541.90 | 33.00 |
  | System Call Overhead | 4 | 15000.00 | 48373.10 | 32.20 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 303.32s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 33914.80 | 27.30 |
  | Pipe Throughput | 4 | 12440.00 | 62212.90 | 50.00 |


### ❌ unixbench-context1-test

- **状态**: `fail`
- **耗时**: 609.59s
- **错误信息**: [starry-ci] ERROR: command timed out

### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 222.87s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.50 | 7.90 |
  | Process Creation | 4 | 126.00 | 261.40 | 20.70 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 817.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 7686.30 | 19.40 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 25623.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 16063.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4831.50 | 12.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 14907.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7437.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 811.95s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 4083.50 | 24.70 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 10071.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 7280.30 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3550.90 | 21.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 9328.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5984.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 857.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 11686.90 | 20.10 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 37354.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 20331.50 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 5126.70 | 8.80 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 18214.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 7017.60 | --- |


### ❌ unixbench-execl-test

- **状态**: `fail`
- **耗时**: 508.60s
- **错误信息**: [starry-ci] ERROR: command timed out

### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 411.49s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 41.60 | 9.80 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 51.80 | 12.20 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.42s
- **错误信息**: [starry-ci] ERROR: command timed out
