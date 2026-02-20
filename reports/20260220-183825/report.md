# StarryOS Daily Test Report

**运行时间**: 2026-02-20T16:53:32.443623859Z → 2026-02-20T18:38:25.420687194Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.39s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 339.39s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2434816.70 | 208.60 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 6464879.50 | 554.00 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 375.51s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 348.80 | 63.40 |
  | Double-Precision Whetstone | 4 | 55.00 | 910.30 | 165.50 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 330.87s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28104.10 | 18.70 |
  | System Call Overhead | 4 | 15000.00 | 35818.90 | 23.90 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 331.30s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19897.40 | 16.00 |
  | Pipe Throughput | 4 | 12440.00 | 41828.20 | 33.60 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.43s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3168.80 | 7.90 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3781.50 | 9.50 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 234.02s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 121.30 | 9.60 |
  | Process Creation | 4 | 126.00 | 251.90 | 20.00 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 861.70s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2364.60 | 6.00 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 7495.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 2691.50 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3684.80 | 9.30 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 10764.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 5632.50 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 851.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1612.90 | 9.70 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3885.60 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 3263.80 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2401.30 | 14.50 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6751.40 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3931.30 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 921.10s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5466.90 | 9.40 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10354.50 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 7092.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3302.50 | 5.70 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 11283.80 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5574.20 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 234.56s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.70 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 15.90 | 3.70 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 431.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 20.10 | 4.70 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 31.30 | 7.40 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1007.94s
- **错误信息**: [xkernel-ci] ERROR: command timed out
