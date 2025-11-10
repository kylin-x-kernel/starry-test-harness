# Starry Test Harness

Rust 原型仓库，用于为 Kylin-X / Starry OS 构建分层自动化测试体系。目标是给研发、测试同学提供一个统一入口，可以在 PR、nightly、灰度阶段按层次执行不同类型的用例（ci/stress/daily），并输出可追踪的日志与报告。

## 关键特性

- **Rust 驱动**：`starry-test-harness` CLI 负责解析测试清单、执行脚本/二进制用例、生成 JSON 报告。
- **Make 统一入口**：遵循“`make <suite> <action>`”约定，例如 `make ci-test run`、`make daily-test publish`。
- **分层目录**：`tests/ci|stress|daily` 保存 manifest（`suite.toml`）和脚本，开发/测试可直接追加用例。
- **日志可追踪**：所有执行输出落在 `logs/<suite>/`，失败时还会写入 `error.log` 方便 CI 收集。
- **StarryOS 集成**：`ci-test` 复用了 upstream `scripts/ci-test.py` 的启动流程，可切换到真实构建/QEMU 启动。
- **AArch64 关注**：默认面向 AArch64，后续再考虑别的架构。

## 仓库结构

```
.
├── Cargo.toml               # Rust harness 配置
├── Makefile                 # make ci-test run / daily-test publish 等
├── scripts/
│   ├── build_stub.sh        # stress/daily 仍使用的占位 build
│   └── ci_build_starry.sh   # 借鉴 StarryOS 构建流程
├── src/
│   └── main.rs              # harness 主逻辑（clap + toml + 日志）
├── templates/
│   └── case_template.sh     # 新脚本用例模板
├── tests/
│   ├── ci/
│   │   ├── suite.toml       # 清单：run.sh/a.sh/b.sh/sqlite.sh
│   │   └── cases/
│   ├── stress/
│   │   ├── suite.toml
│   │   └── cases/
│   └── daily/
│       ├── suite.toml
│       └── cases/
├── logs/                    # 运行日志（含 .gitkeep）
├── reports/daily/           # publish 结果
└── .github/workflows/ci-test.yml
```

## 使用方式

```bash
make ci-test run          # PR/CI 基础功能
make stress-test run      # nightly 压力测试
make daily-test run       # 长稳并发测试
make daily-test publish   # 将最近一次 daily 结果导出到 reports/daily
make build                # 仅编译 Rust harness
```

> `make <suite> run/publish` 的第二个单词只是帮助 make 命令解析；真正执行逻辑在第一个目标里完成。

每次执行会：

1. 调 `scripts/ci_build_starry.sh`（ci-test）或 `scripts/build_stub.sh`（其余 suite）准备镜像，支持切换到 StarryOS 真机流程。
2. 解析 `tests/<suite>/suite.toml`，依序跑 `[[cases]]` 中的脚本/二进制。
3. 将 case 输出写到 `logs/<suite>/cases/<timestamp>/<case>.log`。
4. 生成 `logs/<suite>/<suite>-<timestamp>.log` 与 `logs/<suite>/last_run.json`。
5. 失败则写 `logs/<suite>/error.log` 并让命令以非零退出，方便 CI 感知。

`make daily-test publish` 会把 `logs/daily/last_run.json` 复制到 `reports/daily/summary-<timestamp>.json`，便于灰度版本归档。

## StarryOS 集成参数

- `STARRYOS_ROOT`：指向 StarryOS 源码目录，默认 `../StarryOS`。
- `ENABLE_STARRYOS_BUILD=1`：让 `scripts/ci_build_starry.sh` 真正执行 `make ARCH=<arch> build && make img`；默认 0（仅写入元数据，方便快速验证 harness）。
- `ENABLE_STARRYOS_BOOT=1`：让 `tests/ci/cases/starry_boot.sh` 调用 `StarryOS/scripts/ci-test.py`，在 QEMU 中确认 BusyBox shell；默认 0（只打印提示）。
- 上述变量既可在本地 `export`，也可在 CI（如 GitHub Environments/Secrets）里配置，方便随场景切换行为。

## 添加/维护用例

1. **复制模板**：`cp templates/case_template.sh tests/<tier>/cases/<name>.sh && chmod +x`。
2. **实现逻辑**：脚本里可调用二进制、python、expect 或 `cargo run`，关键是保持可在 AArch64 QEMU/实机上执行。
3. **登记 manifest**：在 `tests/<tier>/suite.toml` 中追加 `[[cases]]`，字段说明：
   - `name` / `description`：展示信息。
   - `path`：相对仓库根路径。
   - `args`：传给脚本/二进制的参数数组。
   - `timeout_secs`（可选）：期望超时预算（当前仅记录，后续可接入强制超时）。
   - `allow_failure`：true 则算 soft fail，不阻塞主流程。
4. **验证**：`make <tier> run`，检查 `logs/<tier>/` 下日志与 JSON。

## CI 流程

- `.github/workflows/ci-test.yml` 参考 StarryOS 的 workflow：包含并发保护、Rust 缓存与可选的 StarryOS checkout。
- 通过仓库/环境变量 `ENABLE_STARRYOS_BUILD`、`ENABLE_STARRYOS_BOOT` 控制是否真正编译 + 启动 StarryOS。
- 默认值为 0，仅运行 harness + 本地脚本；下一步再写真的

## 下一步正在看

1. **替换 build_stub**：对接真实的 Starry OS 编译、打包和 QEMU/实机启动逻辑。
2. **引入超时/并发调度**：在 Rust harness 中监听 case 运行时间，必要时强制 kill。
3. **CI 集成**：在 PR pipeline 中运行 `make ci-test run`，nightly 调 `make stress-test run`，灰度阶段调 `make daily-test run && make daily-test publish`。
4. **用例扩展**：把 musl/调度/资源抢占等真实脚本或 Rust 二进制放入 `tests/<tier>/cases/`。

通过该原型，测试与研发可以在统一仓库内新增脚本/二进制用例，`make`/Rust harness 会自动发现并执行，为后续引入更复杂的 QEMU/expect 流程做好准备。
