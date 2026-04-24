# StarryOS Daily Test Report

**运行时间**: 2026-04-24T17:09:18.497310351Z → 2026-04-24T18:54:07.728650665Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 25.66s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 335.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2424756.00 | 207.80 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6958155.50 | 596.20 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 366.50s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 350.70 | 63.80 |
  | Double-Precision Whetstone | 4 | 55.00 | 912.40 | 165.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 327.01s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 26734.60 | 17.80 |
  | System Call Overhead | 4 | 15000.00 | 33444.10 | 22.30 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 327.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19216.90 | 15.40 |
  | Pipe Throughput | 4 | 12440.00 | 43805.90 | 35.20 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 326.67s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3121.20 | 7.80 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3944.30 | 9.90 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.00s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 116.60 | 9.30 |
  | Process Creation | 4 | 126.00 | 233.80 | 18.60 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 855.09s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3071.90 | 7.80 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 9924.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4228.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 4013.40 | 10.10 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 11414.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5320.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 842.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1936.50 | 11.70 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 4407.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2859.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2592.50 | 15.70 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7125.30 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4550.50 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 904.77s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5475.10 | 9.40 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 9058.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5565.60 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 4214.50 | 7.30 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 12749.30 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5538.80 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.52s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.50 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 16.50 | 3.80 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 431.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 22.60 | 5.30 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 34.10 | 8.00 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1008.96s
- **错误信息**: [xkernel-ci] ERROR: command timed out
