# rust-ci-case 模板

该模板用于通过 [`cargo-generate`](https://github.com/cargo-generate/cargo-generate) 快速创建 Starry CI 的 Rust 测试用例。

## 使用方式

```bash
cargo install cargo-generate      # 首次需要安装
cd tests/ci
cargo generate --path ../templates/rust-ci-case --name demo_case
```

生成目录结构：

```
demo_case/
├── .cargo/config.toml
├── Cargo.toml
└── src/main.rs
```

默认依赖 `test-utils`，并共享仓库的 `target/ci-rust` 以缩短构建时间。根据需要在 `src/main.rs` 中实现测试逻辑即可。
