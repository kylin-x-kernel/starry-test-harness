# StarryOS Daily Test Report

**运行时间**: 2026-04-19T16:54:17.452946517Z → 2026-04-19T18:30:21.776097630Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.95s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 332.46s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2527565.90 | 216.60 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6758239.00 | 579.10 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 364.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 333.00 | 60.50 |
  | Double-Precision Whetstone | 4 | 55.00 | 757.40 | 137.70 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 321.34s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 31050.20 | 20.70 |
  | System Call Overhead | 4 | 15000.00 | 40148.60 | 26.80 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 324.72s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 22876.60 | 18.40 |
  | Pipe Throughput | 4 | 12440.00 | 56586.90 | 45.50 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 322.55s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3688.60 | 9.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4356.50 | 10.90 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 232.73s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 128.30 | 10.20 |
  | Process Creation | 4 | 126.00 | 260.40 | 20.70 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 842.32s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2976.30 | 7.50 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8423.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5803.30 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4849.40 | 12.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 14868.10 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 7588.60 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 837.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 2185.50 | 13.20 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 5012.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3377.70 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3211.70 | 19.40 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 9161.70 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5403.20 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 879.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5940.10 | 10.20 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 14916.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 6772.30 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4117.70 | 7.10 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 15893.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 6327.10 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.09s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 11.70 | 2.70 |
  | Execl Throughput | 4 | 43.00 | 18.40 | 4.30 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 428.48s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 24.00 | 5.70 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 36.90 | 8.70 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 551.99s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.20 | 8.60 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.30 | 5.60 |

