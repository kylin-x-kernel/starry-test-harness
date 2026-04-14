# StarryOS Daily Test Report

**运行时间**: 2026-04-14T17:20:33.246241129Z → 2026-04-14T19:05:33.521772159Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.12s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 335.12s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2435854.90 | 208.70 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5545736.60 | 475.20 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 367.90s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 353.10 | 64.20 |
  | Double-Precision Whetstone | 4 | 55.00 | 753.40 | 137.00 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 326.88s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27800.90 | 18.50 |
  | System Call Overhead | 4 | 15000.00 | 33282.10 | 22.20 |


### ❌ unixbench-pipe-test

- **状态**: `fail`
- **耗时**: 810.28s
- **错误信息**: [xkernel-ci] ERROR: command timed out

### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 326.55s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3053.40 | 7.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3705.70 | 9.30 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 234.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 118.00 | 9.40 |
  | Process Creation | 4 | 126.00 | 242.00 | 19.20 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 847.40s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2811.50 | 7.10 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 10965.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4634.70 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4258.50 | 10.80 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 13187.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6438.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 842.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1924.10 | 11.60 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4460.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2777.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2830.20 | 17.10 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 8155.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4679.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 889.83s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4588.40 | 7.90 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9730.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 7272.80 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4461.80 | 7.70 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14798.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5788.90 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 17.70 | 4.10 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 426.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.60 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 35.60 | 8.40 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 562.85s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.90 | 8.20 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.00 | 5.00 |

