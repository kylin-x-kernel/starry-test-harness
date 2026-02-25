# StarryOS Daily Test Report

**运行时间**: 2026-02-25T17:16:35.759616245Z → 2026-02-25T18:53:33.889088726Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.64s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 335.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2413407.40 | 206.80 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6409968.70 | 549.30 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 373.02s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.90 | 64.20 |
  | Double-Precision Whetstone | 4 | 55.00 | 859.20 | 156.20 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 328.02s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 26870.00 | 17.90 |
  | System Call Overhead | 4 | 15000.00 | 32303.70 | 21.50 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 328.55s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19012.20 | 15.30 |
  | Pipe Throughput | 4 | 12440.00 | 45217.60 | 36.30 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 327.02s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3097.80 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 4011.70 | 10.00 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.13s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 119.10 | 9.40 |
  | Process Creation | 4 | 126.00 | 243.50 | 19.30 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 856.49s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2020.90 | 5.10 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 7305.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3416.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3743.20 | 9.50 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 11641.70 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 4749.30 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 845.84s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1514.10 | 9.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3564.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2610.70 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2496.80 | 15.10 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6076.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4145.40 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 902.87s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3646.10 | 6.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9911.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5127.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3620.80 | 6.20 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 12142.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5672.40 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.44s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 16.00 | 3.70 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 427.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.40 | 5.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.10 | 7.60 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 580.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.30 | 7.20 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 3.10 | 5.20 |

