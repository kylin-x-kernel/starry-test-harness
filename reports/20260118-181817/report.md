# StarryOS Daily Test Report

**运行时间**: 2026-01-18T16:35:22.613710279Z → 2026-01-18T18:18:17.357889817Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.49s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 335.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2408118.60 | 206.40 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 5686657.30 | 487.30 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 374.73s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 349.20 | 63.50 |
  | Double-Precision Whetstone | 4 | 55.00 | 759.30 | 138.10 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 331.16s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27213.80 | 18.10 |
  | System Call Overhead | 4 | 15000.00 | 35792.30 | 23.90 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 329.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19046.10 | 15.30 |
  | Pipe Throughput | 4 | 12440.00 | 46605.50 | 37.50 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3058.40 | 7.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3966.10 | 9.90 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 236.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 119.50 | 9.50 |
  | Process Creation | 4 | 126.00 | 245.60 | 19.50 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 855.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 1949.00 | 4.90 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 5698.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3182.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3259.90 | 8.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 11214.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5515.20 | --- |


### ❌ unixbench-fsbuffer-test

- **状态**: `fail`
- **耗时**: 1208.66s
- **错误信息**: [starry-ci] ERROR: command timed out

### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 927.64s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 2572.00 | 4.40 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 8191.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4283.30 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 2443.40 | 4.20 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 11850.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 2876.70 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 15.10 | 3.50 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 431.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.70 | 4.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.10 | 7.60 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 558.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 3.90 | 6.50 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.40 | 4.00 |

