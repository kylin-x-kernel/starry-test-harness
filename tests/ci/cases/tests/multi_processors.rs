// SPDX-License-Identifier: Apache-2.0
// Copyright (C) 2025 Weikang Guo <guoweikang.kernel@gmail.com>
// Copyright (C) 2025 KylinSoft Co., Ltd. <https://www.kylinos.cn/>
// See LICENSE for license details.
// 
// This file has been modified by KylinSoft on 2025.

//! Driver for the Arm Generic Interrupt Controller version 3 (or 4).

use std::{
    sync::{
        atomic::{AtomicUsize, Ordering},
        mpsc,
        Arc, Barrier, Mutex,
    },
    thread,
    time::{Duration, Instant},
};

const PROCESSORS: usize = 4;
const TASKS_PER_WORKER: usize = 128;

#[test]
fn multi_processors_deadlock_free() {
    let counter = Arc::new(Mutex::new(0usize));
    let history = Arc::new(Mutex::new(Vec::new()));
    let barrier = Arc::new(Barrier::new(PROCESSORS));
    let completed = Arc::new(AtomicUsize::new(0));
    let (tx, rx) = mpsc::channel();

    for worker_id in 0..PROCESSORS {
        let counter = Arc::clone(&counter);
        let history = Arc::clone(&history);
        let barrier = Arc::clone(&barrier);
        let completed = Arc::clone(&completed);
        let tx = tx.clone();

        thread::spawn(move || {
            barrier.wait();

            for local_task in 0..TASKS_PER_WORKER {
                // Stress nested locking while taking locks in the same order to avoid deadlock.
                let mut counter_guard = counter.lock().expect("counter mutex poisoned");
                let mut history_guard = history.lock().expect("history mutex poisoned");
                *counter_guard += 1;
                history_guard.push((worker_id, local_task));
            }

            completed.fetch_add(1, Ordering::SeqCst);
            tx.send(worker_id).expect("send completion signal");
        });
    }
    drop(tx);

    let timeout = Duration::from_secs(2);
    let start = Instant::now();
    for _ in 0..PROCESSORS {
        let _ = rx
            .recv_timeout(timeout)
            .expect("Worker stuck on lock acquisition (possible deadlock)");
    }
    let elapsed = start.elapsed();
    assert!(
        elapsed < Duration::from_secs(5),
        "Workers took too long ({elapsed:?}); potential deadlock detected"
    );

    assert_eq!(
        completed.load(Ordering::SeqCst),
        PROCESSORS,
        "Not all worker threads finished"
    );

    let counter_guard = counter.lock().expect("counter mutex poisoned");
    assert_eq!(
        *counter_guard,
        PROCESSORS * TASKS_PER_WORKER,
        "Counter mismatch"
    );

    let history_guard = history.lock().expect("history mutex poisoned");
    assert_eq!(
        history_guard.len(),
        PROCESSORS * TASKS_PER_WORKER,
        "History length mismatch"
    );
}
