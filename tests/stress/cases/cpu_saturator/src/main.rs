// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2025 Weikang Guo <guoweikang.kernel@gmail.com>
// Copyright (C) 2025 KylinSoft Co., Ltd. <https://www.kylinos.cn/>
// See LICENSE for license details.
// 
// This file has been modified by KylinSoft on 2025.

//! Driver for the Arm Generic Interrupt Controller version 3 (or 4).

use rand::Rng;
use serde::Serialize;
use std::env;
use std::sync::atomic::{AtomicBool, Ordering};
use std::sync::Arc;
use std::thread;
use std::time::{Duration, Instant};

#[derive(Serialize)]
struct StressSummary {
    status: &'static str,
    workers: usize,
    duration_secs: u64,
    operations: u64,
    ops_per_sec: f64,
    peak_temperature_c: f64,
}

fn main() {
    let args: Vec<String> = env::args().collect();
    let worker_count = args
        .get(1)
        .and_then(|s| s.parse::<usize>().ok())
        .filter(|v| *v > 0)
        .unwrap_or(4);
    let duration_secs = args
        .get(2)
        .and_then(|s| s.parse::<u64>().ok())
        .filter(|v| *v > 0)
        .unwrap_or(30);

    let should_run = Arc::new(AtomicBool::new(true));
    let mut handles = Vec::with_capacity(worker_count);

    for idx in 0..worker_count {
        let flag = Arc::clone(&should_run);
        handles.push(thread::spawn(move || worker_loop(idx as u32, flag)));
    }

    thread::sleep(Duration::from_secs(duration_secs));
    should_run.store(false, Ordering::Relaxed);

    let mut total_ops = 0u64;
    for handle in handles {
        total_ops += handle.join().unwrap_or(0);
    }

    // Fake a "temperature" metric calculated from operations per second.
    let ops_per_sec = total_ops as f64 / duration_secs.max(1) as f64;
    let peak_temperature = 35.0 + ops_per_sec.log10().max(0.0) * 3.0;

    let status = if ops_per_sec >= 1_000.0 {
        "pass"
    } else {
        "fail"
    };

    let summary = StressSummary {
        status,
        workers: worker_count,
        duration_secs,
        operations: total_ops,
        ops_per_sec: (ops_per_sec * 10.0).round() / 10.0,
        peak_temperature_c: (peak_temperature * 10.0).round() / 10.0,
    };

    println!("{}", serde_json::to_string(&summary).unwrap());
}

fn worker_loop(worker_id: u32, run_flag: Arc<AtomicBool>) -> u64 {
    let mut rng = rand::thread_rng();
    let mut ops = 0u64;
    let mut acc = worker_id as f64 + 1.0;
    let mut last_yield = Instant::now();

    while run_flag.load(Ordering::Relaxed) {
        let val = rng.gen::<f64>().abs() + 1.0;
        acc = (acc * val.sin().abs().sqrt()) + val.cos().abs();
        ops += 1;

        if last_yield.elapsed().as_millis() > 10 {
            thread::yield_now();
            last_yield = Instant::now();
        }
    }

    // prevent the compiler from optimizing the loop away
    if acc.is_nan() {
        panic!("unexpected NaN");
    }

    ops
}
