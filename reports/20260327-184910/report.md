# StarryOS Daily Test Report

**运行时间**: 2026-03-27T17:04:23.871189815Z → 2026-03-27T18:49:10.681758888Z
**总耗时**: 0.00s

## 📊 测试概览

- ✅ **通过**: 12/13
- ❌ **失败**: 1/13
- ⏭️  **跳过**: 0/13
- 📈 **通过率**: 92.3%

## 📋 测试用例详情

### ✅ concurrency-load-demo

- **状态**: `pass`
- **耗时**: 26.10s

### ✅ unixbench-dhry2reg-test

- **状态**: `pass`
- **耗时**: 337.03s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Dhrystone 2 using register variables | 1 | 116700.00 | 2433064.10 | 208.50 |
  | Dhrystone 2 using register variables | 4 | 116700.00 | 7711102.20 | 660.80 |


### ✅ unixbench-whetstone-double-test

- **状态**: `pass`
- **耗时**: 369.33s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Double-Precision Whetstone | 1 | 55.00 | 351.50 | 63.90 |
  | Double-Precision Whetstone | 4 | 55.00 | 912.70 | 165.90 |


### ✅ unixbench-syscall-test

- **状态**: `pass`
- **耗时**: 327.61s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | System Call Overhead | 1 | 15000.00 | 28037.80 | 18.70 |
  | System Call Overhead | 4 | 15000.00 | 33530.60 | 22.40 |


### ✅ unixbench-pipe-test

- **状态**: `pass`
- **耗时**: 327.60s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe Throughput | 1 | 12440.00 | 19853.00 | 16.00 |
  | Pipe Throughput | 4 | 12440.00 | 48825.40 | 39.20 |


### ✅ unixbench-context1-test

- **状态**: `pass`
- **耗时**: 328.23s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Pipe-based Context Switching | 1 | 4000.00 | 3072.00 | 7.70 |
  | Pipe-based Context Switching | 4 | 4000.00 | 3823.50 | 9.60 |


### ✅ unixbench-spawn-test

- **状态**: `pass`
- **耗时**: 235.45s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Process Creation | 1 | 126.00 | 116.70 | 9.30 |
  | Process Creation | 4 | 126.00 | 238.10 | 18.90 |


### ✅ unixbench-fstime-test

- **状态**: `pass`
- **耗时**: 850.35s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 1 | 3960.00 | 3566.80 | 9.00 |
  | File Read 1024 bufsize 2000 maxblocks | 1 | --- | 8882.80 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 1 | --- | 4156.60 | --- |
  | File Copy 1024 bufsize 2000 maxblocks | 4 | 3960.00 | 3831.80 | 9.70 |
  | File Read 1024 bufsize 2000 maxblocks | 4 | --- | 10942.00 | --- |
  | File Write 1024 bufsize 2000 maxblocks | 4 | --- | 6122.00 | --- |


### ✅ unixbench-fsbuffer-test

- **状态**: `pass`
- **耗时**: 846.50s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 256 bufsize 500 maxblocks | 1 | 1655.00 | 1908.70 | 11.50 |
  | File Read 256 bufsize 500 maxblocks | 1 | --- | 3969.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 1 | --- | 2440.90 | --- |
  | File Copy 256 bufsize 500 maxblocks | 4 | 1655.00 | 2535.70 | 15.30 |
  | File Read 256 bufsize 500 maxblocks | 4 | --- | 7008.90 | --- |
  | File Write 256 bufsize 500 maxblocks | 4 | --- | 3996.40 | --- |


### ✅ unixbench-fsdisk-test

- **状态**: `pass`
- **耗时**: 897.82s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 1 | 5800.00 | 3878.30 | 6.70 |
  | File Read 4096 bufsize 8000 maxblocks | 1 | --- | 12671.70 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 1 | --- | 5595.80 | --- |
  | File Copy 4096 bufsize 8000 maxblocks | 4 | 5800.00 | 3607.90 | 6.20 |
  | File Read 4096 bufsize 8000 maxblocks | 4 | --- | 15319.80 | --- |
  | File Write 4096 bufsize 8000 maxblocks | 4 | --- | 5574.90 | --- |


### ✅ unixbench-execl-test

- **状态**: `pass`
- **耗时**: 231.65s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Execl Throughput | 1 | 43.00 | 10.60 | 2.50 |
  | Execl Throughput | 4 | 43.00 | 20.10 | 4.70 |


### ✅ unixbench-shell1-test

- **状态**: `pass`
- **耗时**: 429.68s
- **详细指标**:

  | 指标名称 | Parallel | Baseline | Result | Index |
  | --- | --- | --- | --- | --- |
  | Shell Scripts (1 concurrent) | 1 | 42.40 | 23.00 | 5.40 |
  | Shell Scripts (1 concurrent) | 4 | 42.40 | 35.40 | 8.30 |


### ❌ unixbench-shell8-test

- **状态**: `fail`
- **耗时**: 1009.45s
- **错误信息**: [xkernel-ci] ERROR: command timed out
