# StarryOS Daily Test Report

**运行时间**: 2026-02-18T17:14:45.609470875Z → 2026-02-18T18:51:52.642903582Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 13/13
- ❌ **失败**: 0/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 100.0%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 14.52s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 338.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2408047.90 | 206.30 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 7111949.10 | 609.40 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 368.87s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 354.50 | 64.50 |
  | Double-Precision Whetstone | 4 | 55.00 | 954.40 | 173.50 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 329.31s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28106.60 | 18.70 |
  | System Call Overhead | 4 | 15000.00 | 32880.00 | 21.90 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 330.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19876.90 | 16.00 |
  | Pipe Throughput | 4 | 12440.00 | 50027.00 | 40.20 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 329.07s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3070.60 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3703.90 | 9.30 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.59s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 116.80 | 9.30 |
  | Process Creation | 4 | 126.00 | 236.70 | 18.80 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 858.47s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 2153.00 | 5.40 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 7699.20 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 3319.20 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3830.50 | 9.70 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 12357.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6069.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 846.26s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1703.60 | 10.30 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3694.80 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2176.50 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2536.80 | 15.30 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 6166.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 4333.80 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 910.93s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 5392.90 | 9.30 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 10974.10 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 4245.90 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3816.60 | 6.60 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 14627.40 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5618.40 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 233.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 19.90 | 4.60 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 430.21s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 21.50 | 5.10 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 32.90 | 7.70 |


### ✅ unixbench-shell8-test

- **状态**: `pass`
- **耗时**: 568.29s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (8 concurrent) | 1 | 6.00 | 4.20 | 7.00 |
  | Shell Scripts (8 concurrent) | 4 | 6.00 | 2.40 | 4.10 |

