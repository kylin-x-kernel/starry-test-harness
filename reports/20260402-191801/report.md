# StarryOS Daily Test Report

**运行时间**: 2026-04-02T17:06:02.358517640Z → 2026-04-02T19:18:01.404242157Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 11/13
- ❌ **失败**: 2/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 84.6%

## 📋 测试用例详情

### ❌ concurrency-load-demo

- **状态**: `fail`
- **耗时**: 1828.00s
- **错误信息**: [daily] X-Kernel command failed

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 334.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2438945.40 | 209.00 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6101553.70 | 522.80 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 368.28s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 350.50 | 63.70 |
  | Double-Precision Whetstone | 4 | 55.00 | 1017.00 | 184.90 |


### ❌ unixbench-syscall-test

- **状态**: `fail`
- **耗时**: 610.56s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 327.14s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 20245.00 | 16.30 |
  | Pipe Throughput | 4 | 12440.00 | 46911.60 | 37.70 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 326.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3088.50 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3689.60 | 9.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 234.71s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 118.90 | 9.40 |
  | Process Creation | 4 | 126.00 | 244.90 | 19.40 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 851.64s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2609.10 | 6.60 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9143.70 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5060.10 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4175.50 | 10.50 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 13147.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6134.30 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 847.10s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1509.40 | 9.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4741.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3762.30 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2721.40 | 16.40 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7854.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4589.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 901.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3512.00 | 6.10 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11639.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4318.40 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4454.70 | 7.70 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 12211.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5659.60 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.92s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 19.00 | 4.40 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 432.54s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.40 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 35.70 | 8.40 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 556.00s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.60 | 7.70 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.00 | 5.10 |

