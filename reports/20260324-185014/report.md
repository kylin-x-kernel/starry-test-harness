# StarryOS Daily Test Report

**运行时间**: 2026-03-24T17:11:41.169050988Z → 2026-03-24T18:50:14.499924406Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 27.58s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 338.85s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2435765.40 | 208.70 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6765700.80 | 579.80 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 374.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 356.00 | 64.70 |
  | Double-Precision Whetstone | 4 | 55.00 | 857.20 | 155.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.05s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27716.10 | 18.50 |
  | System Call Overhead | 4 | 15000.00 | 32955.70 | 22.00 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 331.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19322.60 | 15.50 |
  | Pipe Throughput | 4 | 12440.00 | 44996.60 | 36.20 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.19s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2980.00 | 7.50 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3656.00 | 9.10 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 237.06s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 118.40 | 9.40 |
  | Process Creation | 4 | 126.00 | 241.20 | 19.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 856.07s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2862.30 | 7.20 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 7086.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3496.90 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3908.50 | 9.90 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12603.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6199.90 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 850.02s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 2081.50 | 12.60 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4105.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3257.70 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2523.90 | 15.30 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7655.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4471.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 916.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 2999.10 | 5.20 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 8299.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4380.50 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3820.90 | 6.60 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14508.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 4582.30 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.17s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 15.60 | 3.60 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 435.58s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.60 | 4.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.50 | 7.40 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 578.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.20 | 7.00 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.70 | 4.60 |

