# StarryOS Daily Test Report

**运行时间**: 2026-04-20T17:17:12.948289462Z → 2026-04-20T18:54:52.566860410Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 27.79s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 339.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2205818.10 | 189.00 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6181347.90 | 529.70 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 371.17s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 366.90 | 66.70 |
  | Double-Precision Whetstone | 4 | 55.00 | 783.10 | 142.40 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 26286.80 | 17.50 |
  | System Call Overhead | 4 | 15000.00 | 36233.60 | 24.20 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.50s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 17382.70 | 14.00 |
  | Pipe Throughput | 4 | 12440.00 | 42979.60 | 34.50 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.03s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2729.80 | 6.80 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3249.60 | 8.10 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 236.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 106.50 | 8.50 |
  | Process Creation | 4 | 126.00 | 231.60 | 18.40 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 849.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3263.00 | 8.20 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 11261.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 6549.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4733.50 | 12.00 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 14110.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7363.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 841.99s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1756.80 | 10.60 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 5218.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3858.40 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3001.30 | 18.10 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7839.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5084.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 883.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4932.10 | 8.50 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 12545.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 6255.10 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4674.00 | 8.10 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 16207.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6737.90 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 9.20 | 2.10 |
  | Execl Throughput | 4 | 43.00 | 14.30 | 3.30 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 429.19s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.40 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 36.90 | 8.70 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 581.19s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.10 | 8.40 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.10 | 5.10 |

