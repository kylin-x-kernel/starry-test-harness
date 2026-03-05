# StarryOS Daily Test Report

**运行时间**: 2026-03-05T18:13:34.799184059Z → 2026-03-05T19:51:33.280118564Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.84s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 338.62s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2415101.80 | 206.90 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5855926.50 | 501.80 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 372.22s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.90 | 64.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 909.80 | 165.40 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.99s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27542.70 | 18.40 |
  | System Call Overhead | 4 | 15000.00 | 30442.50 | 20.30 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 331.95s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19886.60 | 16.00 |
  | Pipe Throughput | 4 | 12440.00 | 41233.60 | 33.10 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2819.80 | 7.00 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3778.40 | 9.40 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 236.19s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 118.30 | 9.40 |
  | Process Creation | 4 | 126.00 | 242.40 | 19.20 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 854.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2647.70 | 6.70 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 10337.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4241.80 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3845.30 | 9.70 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12293.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6084.60 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 848.37s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1684.20 | 10.20 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3781.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2824.70 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2091.30 | 12.60 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6726.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4428.30 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 897.83s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3584.50 | 6.20 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10350.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5015.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3828.00 | 6.60 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13523.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5383.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 15.60 | 3.60 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 432.48s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.30 | 5.00 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.00 | 7.50 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 573.59s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.10 | 6.90 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.50 | 4.20 |

