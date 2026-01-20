# StarryOS Daily Test Report

**运行时间**: 2026-01-20T16:46:49.824047229Z → 2026-01-20T18:31:10.445291248Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.68s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 338.60s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2401536.30 | 205.80 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6446359.70 | 552.40 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 376.14s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 349.40 | 63.50 |
  | Double-Precision Whetstone | 4 | 55.00 | 912.70 | 166.00 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.86s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 26373.20 | 17.60 |
  | System Call Overhead | 4 | 15000.00 | 34025.80 | 22.70 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.34s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19313.10 | 15.50 |
  | Pipe Throughput | 4 | 12440.00 | 52484.00 | 42.20 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 330.52s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3066.90 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4077.10 | 10.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.79s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 119.20 | 9.50 |
  | Process Creation | 4 | 126.00 | 251.20 | 19.90 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 860.43s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 1909.10 | 4.80 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 5626.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5651.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3410.00 | 8.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 11555.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5418.20 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 848.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1143.60 | 6.90 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4180.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2133.70 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2159.70 | 13.00 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7160.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4142.40 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 910.92s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3883.30 | 6.70 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10173.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4859.60 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3419.30 | 5.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 10371.80 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 4652.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 15.70 | 3.60 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 435.55s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.20 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.00 | 7.30 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.28s
- **错误信息**: [starry-ci] ERROR: command timed out
