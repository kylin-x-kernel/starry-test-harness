# StarryOS Daily Test Report

**运行时间**: 2026-01-04T16:34:39.445166751Z → 2026-01-04T18:14:03.350948268Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 16.53s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 309.56s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 3680844.40 | 315.40 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 8629731.20 | 739.50 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 363.11s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 676.80 | 123.00 |
  | Double-Precision Whetstone | 4 | 55.00 | 1455.70 | 264.70 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 302.62s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 57784.80 | 38.50 |
  | System Call Overhead | 4 | 15000.00 | 48247.10 | 32.20 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 302.62s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 45268.30 | 36.40 |
  | Pipe Throughput | 4 | 12440.00 | 71771.90 | 57.70 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 302.40s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 95.30 | 0.20 |
  | Pipe-based Context Switching | 4 | 4000.00 | 498.50 | 1.20 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 222.61s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.50 | 7.90 |
  | Process Creation | 4 | 126.00 | 265.60 | 21.10 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 819.24s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 8116.10 | 20.50 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 28851.50 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 17891.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 6138.60 | 15.50 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12922.70 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 9358.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 811.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 4555.50 | 27.50 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 11462.00 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 8136.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 4050.50 | 24.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 10834.60 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 6886.40 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 853.91s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 13544.30 | 23.40 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 41011.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 21552.50 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3808.10 | 6.60 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 18856.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 7834.00 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 221.95s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 18.90 | 4.40 |
  | Execl Throughput | 4 | 43.00 | 23.70 | 5.50 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 410.08s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 42.70 | 10.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 52.70 | 12.40 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.34s
- **错误信息**: [starry-ci] ERROR: command timed out
