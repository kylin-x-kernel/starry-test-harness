# StarryOS Daily Test Report

**运行时间**: 2026-02-07T16:43:03.900565939Z → 2026-02-07T18:32:27.499896528Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.20s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 362.69s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2448212.30 | 209.80 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5274518.60 | 452.00 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 397.17s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.90 | 64.20 |
  | Double-Precision Whetstone | 4 | 55.00 | 1075.80 | 195.60 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 358.55s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28457.20 | 19.00 |
  | System Call Overhead | 4 | 15000.00 | 36888.40 | 24.60 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 359.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19662.30 | 15.80 |
  | Pipe Throughput | 4 | 12440.00 | 47069.60 | 37.80 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 355.00s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3079.80 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3743.80 | 9.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 247.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 198.50 | 15.80 |
  | Process Creation | 4 | 126.00 | 337.30 | 26.80 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 965.56s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 692.70 | 1.70 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 2560.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 1297.10 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 356.30 | 0.90 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 2364.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 734.70 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 893.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1018.90 | 6.20 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 2816.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 1467.90 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 1484.60 | 9.00 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 3881.10 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 1512.70 | --- |


### ❌ unixbench-fsdisk-test

- **状态**: `fail`
- **耗时**: 1208.92s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 246.53s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 28.30 | 6.60 |
  | Execl Throughput | 4 | 43.00 | 33.90 | 7.90 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 453.06s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 16.60 | 3.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 17.90 | 4.20 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 684.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 1.90 | 3.20 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 1.10 | 1.80 |

