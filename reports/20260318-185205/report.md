# StarryOS Daily Test Report

**运行时间**: 2026-03-18T17:14:28.442729281Z → 2026-03-18T18:52:05.770806226Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 27.44s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 335.56s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2194724.00 | 188.10 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5942403.20 | 509.20 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 372.30s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 366.80 | 66.70 |
  | Double-Precision Whetstone | 4 | 55.00 | 862.70 | 156.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 331.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27468.70 | 18.30 |
  | System Call Overhead | 4 | 15000.00 | 38544.10 | 25.70 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 18025.10 | 14.50 |
  | Pipe Throughput | 4 | 12440.00 | 46480.30 | 37.40 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2572.40 | 6.40 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3496.40 | 8.70 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.62s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 108.90 | 8.60 |
  | Process Creation | 4 | 126.00 | 237.70 | 18.90 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 846.53s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3530.20 | 8.90 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 11343.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4905.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4975.40 | 12.60 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 14749.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7720.90 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 842.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1521.90 | 9.20 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4927.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2489.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3049.00 | 18.40 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 8279.60 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5280.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 889.68s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5714.50 | 9.90 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 12491.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 6442.60 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4403.50 | 7.60 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 16978.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6679.10 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.90s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 9.30 | 2.20 |
  | Execl Throughput | 4 | 43.00 | 15.70 | 3.70 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 432.54s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.60 | 4.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 33.00 | 7.80 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 574.14s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.50 | 7.50 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.20 | 5.40 |

