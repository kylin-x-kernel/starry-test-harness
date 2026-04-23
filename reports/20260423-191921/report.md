# StarryOS Daily Test Report

**运行时间**: 2026-04-23T17:41:56.530548865Z → 2026-04-23T19:19:21.446230019Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.26s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 336.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2438370.00 | 208.90 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6194838.30 | 530.80 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 369.08s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 347.30 | 63.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 949.60 | 172.70 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 328.00s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27149.00 | 18.10 |
  | System Call Overhead | 4 | 15000.00 | 30322.00 | 20.20 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 327.79s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 20407.80 | 16.40 |
  | Pipe Throughput | 4 | 12440.00 | 49581.30 | 39.90 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 326.74s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3169.80 | 7.90 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4451.70 | 11.10 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.16s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 117.60 | 9.30 |
  | Process Creation | 4 | 126.00 | 237.30 | 18.80 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 846.62s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3198.20 | 8.10 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8926.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4064.70 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4180.30 | 10.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12882.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6199.80 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 840.78s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 2190.60 | 13.20 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4515.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3042.90 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2771.80 | 16.70 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 8147.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4129.10 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 897.55s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3416.40 | 5.90 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11421.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4527.20 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4583.70 | 7.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13780.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5745.20 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.40 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 12.30 | 2.90 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 428.94s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.50 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 35.40 | 8.40 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 576.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.80 | 7.90 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.00 | 4.90 |

