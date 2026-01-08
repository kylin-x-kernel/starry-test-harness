# StarryOS Daily Test Report

**运行时间**: 2026-01-08T16:41:38.254928668Z → 2026-01-08T18:23:13.083280392Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 13.97s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 313.18s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 3672289.20 | 314.70 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 8090767.70 | 693.30 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 361.36s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 676.00 | 122.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 1481.80 | 269.40 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 305.19s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 49952.50 | 33.30 |
  | System Call Overhead | 4 | 15000.00 | 48013.90 | 32.00 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 304.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 33979.10 | 27.30 |
  | Pipe Throughput | 4 | 12440.00 | 59428.00 | 47.80 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 304.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 55.70 | 0.10 |
  | Pipe-based Context Switching | 4 | 4000.00 | 515.70 | 1.30 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 223.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 99.40 | 7.90 |
  | Process Creation | 4 | 126.00 | 254.20 | 20.20 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 818.38s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 7986.40 | 20.20 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 19034.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 15404.00 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 5453.90 | 13.80 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 16523.30 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 8655.40 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 813.81s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 4022.90 | 24.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 10028.50 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 7146.00 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 3580.00 | 21.60 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 9267.20 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 5855.30 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 850.53s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 12517.90 | 21.60 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 36820.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 19506.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 5166.10 | 8.90 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 18459.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 7692.00 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 220.97s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 18.60 | 4.30 |
  | Execl Throughput | 4 | 43.00 | 23.30 | 5.40 |


### ❌ unixbench-shell1-test

- **状态**: `fail`
- **耗时**: 1008.52s
- **错误信息**: [starry-ci] ERROR: command timed out

### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 536.68s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 5.40 | 8.90 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.40 | 4.00 |

