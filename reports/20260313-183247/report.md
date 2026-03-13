# StarryOS Daily Test Report

**运行时间**: 2026-03-13T16:54:29.606155182Z → 2026-03-13T18:32:47.293060516Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 27.94s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 340.33s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2432309.20 | 208.40 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 7108010.70 | 609.10 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 375.59s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 353.30 | 64.20 |
  | Double-Precision Whetstone | 4 | 55.00 | 860.20 | 156.40 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 332.07s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27593.90 | 18.40 |
  | System Call Overhead | 4 | 15000.00 | 31934.90 | 21.30 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 331.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 20042.10 | 16.10 |
  | Pipe Throughput | 4 | 12440.00 | 44772.10 | 36.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3038.90 | 7.60 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3728.10 | 9.30 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 236.10s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 118.10 | 9.40 |
  | Process Creation | 4 | 126.00 | 238.00 | 18.90 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 850.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2368.30 | 6.00 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9564.90 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 5085.90 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4037.00 | 10.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12874.40 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6188.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 851.30s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1785.00 | 10.80 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3872.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2585.70 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2639.90 | 16.00 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7732.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4278.50 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 903.66s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 4168.60 | 7.20 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 11757.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5670.80 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4086.70 | 7.00 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14104.90 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5809.50 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.42s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 17.20 | 4.00 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 429.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.00 | 5.20 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.80 | 7.70 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 579.53s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.20 | 7.00 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.50 | 4.10 |

