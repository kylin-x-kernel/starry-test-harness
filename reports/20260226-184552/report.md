# StarryOS Daily Test Report

**运行时间**: 2026-02-26T17:08:42.593227355Z → 2026-02-26T18:45:52.821144158Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.50s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 337.52s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2438982.80 | 209.00 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6414499.70 | 549.70 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 373.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 352.70 | 64.10 |
  | Double-Precision Whetstone | 4 | 55.00 | 941.70 | 171.20 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 332.19s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27950.80 | 18.60 |
  | System Call Overhead | 4 | 15000.00 | 30898.70 | 20.60 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.47s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19017.90 | 15.30 |
  | Pipe Throughput | 4 | 12440.00 | 48489.70 | 39.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 2986.90 | 7.50 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3936.80 | 9.80 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 118.20 | 9.40 |
  | Process Creation | 4 | 126.00 | 241.10 | 19.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 852.74s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3719.00 | 9.40 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 7803.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3796.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3951.00 | 10.00 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 11370.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6210.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 851.60s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1513.70 | 9.10 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3785.10 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2207.40 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2682.30 | 16.20 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6266.60 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4386.90 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 904.55s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 2767.50 | 4.80 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10928.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3694.00 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3533.00 | 6.10 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 13737.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5641.80 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 235.53s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.30 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 13.90 | 3.20 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 431.89s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.60 | 4.90 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.60 | 7.70 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 569.20s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.40 | 7.30 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.90 | 4.80 |

