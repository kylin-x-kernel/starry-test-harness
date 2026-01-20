// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2025 Weikang Guo <guoweikang.kernel@gmail.com>
// Copyright (C) 2025 KylinSoft Co., Ltd. <https://www.kylinos.cn/>
// See LICENSE for license details.
// 
// This file has been modified by KylinSoft on 2025.

//! Driver for the Arm Generic Interrupt Controller version 3 (or 4).

//! Shared helpers for CI test cases.
//!
//! The crate itself does not expose functionality; each test lives under
//! `tests/` and can depend on `test_utils` directly.

/// Placeholder to ensure the crate compiles even without exported items.
#[allow(dead_code)]
pub fn __keep_crate_alive() {}
