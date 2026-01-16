# StarryOS Daily Test Report

**运行时间**: 2026-01-16T16:40:57.652953851Z → 2026-01-16T18:30:15.804382105Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 11/13
- ❌ **失败**: 2/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 84.6%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.46s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 340.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2415512.80 | 207.00 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6503984.90 | 557.30 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 375.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 348.00 | 63.30 |
  | Double-Precision Whetstone | 4 | 55.00 | 995.40 | 181.00 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 331.97s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27983.60 | 18.70 |
  | System Call Overhead | 4 | 15000.00 | 36138.70 | 24.10 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.55s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 18987.70 | 15.30 |
  | Pipe Throughput | 4 | 12440.00 | 44703.60 | 35.90 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 331.53s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3181.30 | 8.00 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3778.60 | 9.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.43s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 119.10 | 9.50 |
  | Process Creation | 4 | 126.00 | 241.00 | 19.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 857.68s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2566.80 | 6.50 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 6229.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4148.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3392.90 | 8.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12114.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5057.60 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 856.17s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1520.70 | 9.20 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3404.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2249.90 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2274.50 | 13.70 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6659.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3978.40 | --- |


### ❌ unixbench-fsdisk-test

- **状态**: `fail`
- **耗时**: 1209.48s
- **错误信息**: [starry-ci] ERROR: command timed out

### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 17.80 | 4.10 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 427.48s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.10 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.10 | 7.30 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.46s
- **错误信息**: [starry-ci] ERROR: command timed out
