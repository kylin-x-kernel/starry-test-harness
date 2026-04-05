# StarryOS Daily Test Report

**运行时间**: 2026-04-05T16:48:39.718330777Z → 2026-04-05T18:32:43.475930047Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.15s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 331.28s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2196269.80 | 188.20 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5622745.90 | 481.80 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 367.75s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 368.30 | 67.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 919.00 | 167.10 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 327.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 26964.90 | 18.00 |
  | System Call Overhead | 4 | 15000.00 | 37807.70 | 25.20 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 327.69s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 18163.20 | 14.60 |
  | Pipe Throughput | 4 | 12440.00 | 42701.70 | 34.30 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 326.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2813.80 | 7.00 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3778.70 | 9.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 234.60s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 111.10 | 8.80 |
  | Process Creation | 4 | 126.00 | 236.20 | 18.70 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 843.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3463.40 | 8.70 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 11122.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5119.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4988.90 | 12.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 15151.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7815.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 837.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1882.80 | 11.40 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4879.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3136.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3111.40 | 18.80 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7060.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5361.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 881.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5338.20 | 9.20 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 13177.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 7028.50 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4660.90 | 8.00 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 16937.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 7022.40 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.78s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 9.50 | 2.20 |
  | Execl Throughput | 4 | 43.00 | 13.10 | 3.10 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 429.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.70 | 5.40 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 36.30 | 8.60 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.83s
- **错误信息**: [xkernel-ci] ERROR: command timed out
