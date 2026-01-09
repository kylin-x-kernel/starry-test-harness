# StarryOS Daily Test Report

**运行时间**: 2026-01-09T16:40:10.417429409Z → 2026-01-09T18:19:40.654873028Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.30s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 312.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 3676197.40 | 315.00 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 8370319.80 | 717.30 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 362.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 677.20 | 123.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 1471.90 | 267.60 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 304.56s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 49781.60 | 33.20 |
  | System Call Overhead | 4 | 15000.00 | 51080.10 | 34.10 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 303.87s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 34241.60 | 27.50 |
  | Pipe Throughput | 4 | 12440.00 | 64129.50 | 51.60 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 303.60s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 55.70 | 0.10 |
  | Pipe-based Context Switching | 4 | 4000.00 | 494.20 | 1.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 223.19s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.50 | 7.90 |
  | Process Creation | 4 | 126.00 | 261.40 | 20.70 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 818.03s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 7590.20 | 19.20 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 25637.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 16003.90 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4817.30 | 12.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 14774.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7362.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 812.43s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 4093.00 | 24.70 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 10211.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 7405.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3570.70 | 21.60 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 9657.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 6263.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 855.00s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 12991.70 | 22.40 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 37477.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 20428.00 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4354.80 | 7.50 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 17329.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 7028.40 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 220.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 18.80 | 4.40 |
  | Execl Throughput | 4 | 43.00 | 22.40 | 5.20 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 410.17s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 41.30 | 9.70 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 50.60 | 11.90 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.00s
- **错误信息**: [starry-ci] ERROR: command timed out
