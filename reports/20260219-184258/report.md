# StarryOS Daily Test Report

**运行时间**: 2026-02-19T17:05:31.258482649Z → 2026-02-19T18:42:58.350221070Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.52s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 335.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2424888.10 | 207.80 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5881518.90 | 504.00 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 370.14s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 353.00 | 64.20 |
  | Double-Precision Whetstone | 4 | 55.00 | 859.90 | 156.30 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.37s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28066.60 | 18.70 |
  | System Call Overhead | 4 | 15000.00 | 38125.50 | 25.40 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.87s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19528.70 | 15.70 |
  | Pipe Throughput | 4 | 12440.00 | 47092.50 | 37.90 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3083.60 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4071.40 | 10.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 234.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 121.60 | 9.60 |
  | Process Creation | 4 | 126.00 | 252.60 | 20.00 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 852.37s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2109.40 | 5.30 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 5819.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3545.20 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 2844.90 | 7.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 9296.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6024.20 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 847.92s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1737.00 | 10.50 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3958.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2589.90 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2579.30 | 15.60 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7653.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3350.50 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 916.63s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 2594.30 | 4.50 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9553.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3720.60 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3625.20 | 6.30 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13742.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5032.00 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.27s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 13.70 | 3.20 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 435.00s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.60 | 5.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.60 | 7.50 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 586.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.20 | 7.00 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.70 | 4.60 |

