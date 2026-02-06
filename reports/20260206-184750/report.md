# StarryOS Daily Test Report

**运行时间**: 2026-02-06T16:59:32.608997607Z → 2026-02-06T18:47:50.776437246Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.21s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 365.61s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2435178.70 | 208.70 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 4960267.30 | 425.00 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 399.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 349.60 | 63.60 |
  | Double-Precision Whetstone | 4 | 55.00 | 1081.20 | 196.60 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 357.53s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 29023.50 | 19.30 |
  | System Call Overhead | 4 | 15000.00 | 34919.30 | 23.30 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 355.49s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19778.50 | 15.90 |
  | Pipe Throughput | 4 | 12440.00 | 39466.00 | 31.70 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 354.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3057.90 | 7.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3785.70 | 9.50 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 247.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 199.60 | 15.80 |
  | Process Creation | 4 | 126.00 | 341.30 | 27.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 974.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 808.90 | 2.00 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 2318.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 1404.70 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 532.90 | 1.30 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 2637.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 826.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 893.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1211.10 | 7.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3554.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 1921.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 1298.10 | 7.80 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 5190.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 1705.00 | --- |


### ❌ unixbench-fsdisk-test

- **状态**: `fail`
- **耗时**: 1208.10s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 244.44s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 29.40 | 6.80 |
  | Execl Throughput | 4 | 43.00 | 33.40 | 7.80 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 448.55s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 17.10 | 4.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 18.50 | 4.40 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 614.69s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 1.90 | 3.20 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 0.60 | 1.00 |

