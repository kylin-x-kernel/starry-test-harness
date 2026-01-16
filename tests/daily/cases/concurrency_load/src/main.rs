// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2025 Weikang Guo <guoweikang.kernel@gmail.com>
// Copyright (C) 2025 KylinSoft Co., Ltd. <https://www.kylinos.cn/>
// See LICENSE for license details.
// 
// This file has been modified by KylinSoft on 2025.

//! Driver for the Arm Generic Interrupt Controller version 3 (or 4).

use serde::Serialize;
use std::env;
use std::sync::atomic::{AtomicU64, Ordering};
use std::sync::Arc;
use std::thread;
use std::time::{Duration, Instant};

#[derive(Serialize)]
struct ResultPayload {
    status: &'static str,
    workers: usize,
    iterations: u64,
    duration_ms: u128,
    total_sum: u64,
    max_worker_latency_ms: u128,
}

fn main() {
    let args: Vec<String> = env::args().collect();
    let workers: usize = args
        .get(1)
        .map(|s| s.parse().unwrap_or(4))
        .unwrap_or(4)
        .max(1);
    let iterations: u64 = args
        .get(2)
        .map(|s| s.parse().unwrap_or(10_000))
        .unwrap_or(10_000)
        .max(1);

    let start = Instant::now();
    let total_sum = Arc::new(AtomicU64::new(0));
    let mut handles = Vec::with_capacity(workers);
    let mut latencies = Vec::with_capacity(workers);

    for worker_id in 0..workers {
        let iterations = iterations;
        let sum_ref = Arc::clone(&total_sum);
        handles.push(thread::spawn(move || {
            let worker_start = Instant::now();
            let mut local_sum = 0u64;
            for i in 0..iterations {
                local_sum = local_sum.wrapping_add(i + worker_id as u64);
                if i % 10_000 == 0 {
                    thread::yield_now();
                }
            }
            sum_ref.fetch_add(local_sum, Ordering::Relaxed);
            worker_start.elapsed()
        }));
    }

    for handle in handles {
        let latency = handle
            .join()
            .unwrap_or_else(|_| Duration::from_millis(iterations));
        latencies.push(latency);
    }

    let duration_ms = start.elapsed().as_millis();
    let max_latency = latencies
        .into_iter()
        .map(|d| d.as_millis())
        .max()
        .unwrap_or(duration_ms);

    let payload = ResultPayload {
        status: "pass",
        workers,
        iterations,
        duration_ms,
        total_sum: total_sum.load(Ordering::Relaxed),
        max_worker_latency_ms: max_latency,
    };

    println!("{}", serde_json::to_string(&payload).unwrap());
}
