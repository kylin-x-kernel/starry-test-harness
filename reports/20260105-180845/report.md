# StarryOS Daily Test Report

**运行时间**: 2026-01-05T16:37:58.606180940Z → 2026-01-05T18:08:45.682353318Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.37s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 313.19s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 3679466.60 | 315.30 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 8488882.80 | 727.40 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 361.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 675.40 | 122.80 |
  | Double-Precision Whetstone | 4 | 55.00 | 1480.20 | 269.10 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 302.89s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 57814.50 | 38.50 |
  | System Call Overhead | 4 | 15000.00 | 49040.40 | 32.70 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 301.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 45956.40 | 36.90 |
  | Pipe Throughput | 4 | 12440.00 | 72418.50 | 58.20 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 302.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 75.70 | 0.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 495.10 | 1.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 222.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.50 | 7.90 |
  | Process Creation | 4 | 126.00 | 264.70 | 21.00 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 817.88s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 9667.60 | 24.40 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 29225.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 17888.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 5925.10 | 15.00 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 19162.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 9421.80 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 810.51s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 4504.50 | 27.20 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 11710.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 7987.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 4181.40 | 25.30 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 11157.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 7160.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 847.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 13301.50 | 22.90 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 40956.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 21778.00 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 5140.70 | 8.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 19151.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 8044.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 221.79s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 18.80 | 4.40 |
  | Execl Throughput | 4 | 43.00 | 23.30 | 5.40 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 411.60s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 42.70 | 10.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 51.70 | 12.20 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 501.01s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.80 | 9.70 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.70 | 4.40 |

