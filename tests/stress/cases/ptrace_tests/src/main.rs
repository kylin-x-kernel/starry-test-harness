use nix::sys::ptrace;
use nix::sys::signal::{kill, Signal};
use nix::sys::wait::{waitpid, WaitPidFlag, WaitStatus};
use nix::unistd::{fork, getpid, ForkResult, Pid};
use serde::Serialize;
use std::time::{Duration, Instant};

fn main() {
    let start = Instant::now();
    let result = run_ptrace_roundtrip();

    let payload = match result {
        Ok(outcome) => outcome.into_success(start.elapsed()),
        Err(err) => TestResult::error(err, start.elapsed()),
    };

    println!("{}", serde_json::to_string(&payload).unwrap());
}

#[derive(Serialize)]
struct TestResult {
    status: &'static str,
    reason: Option<String>,
    child_pid: Option<i32>,
    stop_signal: Option<String>,
    elapsed_ms: u128,
}

impl TestResult {
    fn error(reason: String, elapsed: Duration) -> Self {
        Self {
            status: "fail",
            reason: Some(reason),
            child_pid: None,
            stop_signal: None,
            elapsed_ms: elapsed.as_millis(),
        }
    }
}

#[derive(Debug)]
struct TraceOutcome {
    child_pid: i32,
    stop_signal: Option<String>,
}

impl TraceOutcome {
    fn into_success(self, elapsed: Duration) -> TestResult {
        TestResult {
            status: "pass",
            reason: None,
            child_pid: Some(self.child_pid),
            stop_signal: self.stop_signal,
            elapsed_ms: elapsed.as_millis(),
        }
    }
}

fn run_ptrace_roundtrip() -> Result<TraceOutcome, String> {
    let forked = unsafe { fork() }.map_err(|e| format!("fork failed: {e}"))?;
    match forked {
        ForkResult::Child => {
            child_body().unwrap_or_else(|e| {
                // We are about to exit anyway; try best effort logging.
                eprintln!("child error: {e}");
            });
            std::process::exit(0);
        }
        ForkResult::Parent { child } => parent_body(child),
    }
}

fn child_body() -> Result<(), String> {
    // Put the child under tracing and stop immediately so the parent can attach.
    ptrace::traceme().map_err(|e| format!("ptrace(TRACEME): {e}"))?;
    kill(Pid::from_raw(getpid().as_raw()), Signal::SIGSTOP)
        .map_err(|e| format!("child sigstop: {e}"))?;
    // Once continued by parent, simply exit.
    Ok(())
}

fn parent_body(child: Pid) -> Result<TraceOutcome, String> {
    let child_pid = child.as_raw();
    let stop_signal = match waitpid(child, Some(WaitPidFlag::empty()))
        .map_err(|e| format!("waitpid(SIGSTOP): {e}"))?
    {
        WaitStatus::Stopped(_, sig) if sig == Signal::SIGSTOP => Some(format!("{sig:?}")),
        other => return Err(format!("unexpected wait status after fork: {other:?}")),
    };

    // Continue the child and wait for it to exit.
    ptrace::cont(child, None).map_err(|e| format!("ptrace(CONT): {e}"))?;

    match waitpid(child, Some(WaitPidFlag::empty()))
        .map_err(|e| format!("waitpid(exit): {e}"))?
    {
        WaitStatus::Exited(_, code) => {
            if code != 0 {
                return Err(format!("child exited with code {code}"));
            }
        }
        WaitStatus::Signaled(_, sig, _) => {
            return Err(format!("child received signal {sig}"));
        }
        other => {
            return Err(format!("unexpected wait status at exit: {other:?}"));
        }
    }

    Ok(TraceOutcome {
        child_pid,
        stop_signal,
    })
}
