# StarryOS Daily Test Report

**运行时间**: 2026-02-13T16:59:58.251366264Z → 2026-02-13T18:44:39.638316044Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.54s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 340.49s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2439189.80 | 209.00 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6068890.40 | 520.00 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 372.07s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.20 | 63.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 806.80 | 146.70 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.78s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 27793.30 | 18.50 |
  | System Call Overhead | 4 | 15000.00 | 30857.90 | 20.60 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 331.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 18798.00 | 15.10 |
  | Pipe Throughput | 4 | 12440.00 | 37271.50 | 30.00 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3019.90 | 7.50 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3955.70 | 9.90 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.51s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 116.20 | 9.20 |
  | Process Creation | 4 | 126.00 | 239.10 | 19.00 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 853.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2485.40 | 6.30 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8971.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4317.70 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3852.80 | 9.70 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12038.60 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 4423.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 851.15s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1367.60 | 8.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3672.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2450.70 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2434.30 | 14.70 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6742.10 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4229.60 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 919.06s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3966.20 | 6.80 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 7018.00 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 3803.70 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3709.50 | 6.40 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 11786.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5338.90 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.59s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.30 | 2.40 |
  | Execl Throughput | 4 | 43.00 | 16.80 | 3.90 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 429.61s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.50 | 4.80 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 30.60 | 7.20 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1008.44s
- **错误信息**: [xkernel-ci] ERROR: command timed out
