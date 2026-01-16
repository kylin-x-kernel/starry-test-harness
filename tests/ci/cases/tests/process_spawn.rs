// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2025 Weikang Guo <guoweikang.kernel@gmail.com>
// Copyright (C) 2025 KylinSoft Co., Ltd. <https://www.kylinos.cn/>
// See LICENSE for license details.
// 
// This file has been modified by KylinSoft on 2025.

//! Driver for the Arm Generic Interrupt Controller version 3 (or 4).

use std::process::Command;
use test_utils::{ensure_success, run_command};

#[test]
fn process_spawn_smoke() {
    let mut command = Command::new("sh");
    command.arg("-c").arg("echo starry-ci-process");

    let output = run_command(command).expect("执行命令");
    ensure_success(&output, "echo starry-ci-process").expect("命令应成功");

    assert_eq!(
        output.trimmed_stdout(),
        "starry-ci-process",
        "命令输出不匹配"
    );
}
