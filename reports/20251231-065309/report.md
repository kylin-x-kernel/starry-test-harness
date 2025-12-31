# StarryOS Daily Test Report

**运行时间**: 2025-12-31T05:22:09.710283700Z → 2025-12-31T06:53:09.860917680Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 16.19s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 308.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 3683749.60 | 315.70 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 8598009.60 | 736.80 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 359.07s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 676.40 | 123.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 1455.90 | 264.70 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 302.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 58152.10 | 38.80 |
  | System Call Overhead | 4 | 15000.00 | 48294.60 | 32.20 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 302.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 44435.30 | 35.70 |
  | Pipe Throughput | 4 | 12440.00 | 71726.00 | 57.70 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 302.10s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 95.40 | 0.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 661.60 | 1.70 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 222.71s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.50 | 7.90 |
  | Process Creation | 4 | 126.00 | 266.60 | 21.20 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 817.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 9459.40 | 23.90 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 28680.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 17689.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 5384.70 | 13.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 15104.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7943.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 810.76s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 4520.50 | 27.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 11451.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 8001.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3910.20 | 23.60 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 10276.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 6651.10 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 855.72s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 13053.40 | 22.50 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 41077.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 21136.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4543.50 | 7.80 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 17381.80 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 7170.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 221.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 18.90 | 4.40 |
  | Execl Throughput | 4 | 43.00 | 24.00 | 5.60 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 409.46s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 42.90 | 10.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 52.70 | 12.40 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 511.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.60 | 9.30 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.60 | 4.40 |

