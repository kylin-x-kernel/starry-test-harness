# StarryOS Daily Test Report

**运行时间**: 2026-01-13T16:43:19.554867341Z → 2026-01-13T18:26:52.351579131Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 11/13
- ❌ **失败**: 2/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 84.6%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 13.75s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 312.96s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 3661419.70 | 313.70 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 8116106.30 | 695.50 |


### ❌ unixbench-whetstone-double-test

- **状态**: `fail`
- **耗时**: 609.65s
- **错误信息**: [starry-ci] ERROR: command timed out

### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 303.76s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 49271.50 | 32.80 |
  | System Call Overhead | 4 | 15000.00 | 46676.90 | 31.10 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 304.10s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 33996.20 | 27.30 |
  | Pipe Throughput | 4 | 12440.00 | 60220.20 | 48.40 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 303.60s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 51.20 | 0.10 |
  | Pipe-based Context Switching | 4 | 4000.00 | 664.30 | 1.70 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 223.04s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.50 | 7.90 |
  | Process Creation | 4 | 126.00 | 262.70 | 20.80 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 818.89s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 9008.10 | 22.70 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 25319.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 15693.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 5640.40 | 14.20 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 16545.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 8749.30 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 812.67s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 4078.00 | 24.60 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 9931.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 7156.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3691.50 | 22.30 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 9770.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 6235.00 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 850.28s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 12427.20 | 21.40 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 36670.20 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 19207.50 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 5086.50 | 8.80 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 18339.60 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 7689.70 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 221.98s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 18.70 | 4.40 |
  | Execl Throughput | 4 | 43.00 | 25.50 | 5.90 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 410.94s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 41.00 | 9.70 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 48.80 | 11.50 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1008.37s
- **错误信息**: [starry-ci] ERROR: command timed out
