use serde::Serialize;
use std::fs::{self, File};
use std::io::Write;
use std::os::unix::fs::PermissionsExt;
use std::process::{Command, Stdio};
use std::time::Instant;

const SQLITE3: &[u8] = include_bytes!("../assets/sqlite3");
const TESTFIXTURE: &[u8] = include_bytes!("../assets/testfixture");
const ROWALLOCK: &[u8] = include_bytes!("../assets/rowallock.test");
const TESTER_TCL: &[u8] = include_bytes!("../assets/tester.tcl");
const LOCK_COMMON_TCL: &[u8] = include_bytes!("../assets/lock_common.tcl");
const THREAD_COMMON_TCL: &[u8] = include_bytes!("../assets/thread_common.tcl");
const MALLOC_COMMON_TCL: &[u8] = include_bytes!("../assets/malloc_common.tcl");

#[derive(Serialize)]
struct TestResult {
    status: &'static str,
    exit_code: i32,
    stdout: String,
    stderr: String,
    duration_ms: u128,
    error: Option<String>,
}

fn main() {
    let start = Instant::now();
    let result = run().unwrap_or_else(|e| TestResult {
        status: "fail",
        exit_code: -1,
        stdout: String::new(),
        stderr: String::new(),
        duration_ms: start.elapsed().as_millis(),
        error: Some(e),
    });

    println!("{}", serde_json::to_string(&result).unwrap());
}

fn run() -> Result<TestResult, String> {
    // 落地到临时目录，避免和其他用例冲突
    let workdir = std::env::temp_dir().join("sqlite-fixture");
    fs::create_dir_all(&workdir).map_err(|e| format!("create dir: {e}"))?;

    write_asset(&workdir, "sqlite3", SQLITE3, 0o755)?;
    write_asset(&workdir, "testfixture", TESTFIXTURE, 0o755)?;
    write_asset(&workdir, "rowallock.test", ROWALLOCK, 0o644)?;
    write_asset(&workdir, "tester.tcl", TESTER_TCL, 0o644)?;
    write_asset(&workdir, "lock_common.tcl", LOCK_COMMON_TCL, 0o644)?;
    write_asset(&workdir, "thread_common.tcl", THREAD_COMMON_TCL, 0o644)?;
    write_asset(&workdir, "malloc_common.tcl", MALLOC_COMMON_TCL, 0o644)?;
    

    let mut cmd = Command::new(workdir.join("testfixture"));
    cmd.arg("./rowallock.test");
    cmd.current_dir(&workdir);
    // 将 sqlite3 所在目录放入 PATH，确保 testfixture 能找到
    let new_path = match std::env::var("PATH") {
        Ok(p) if !p.is_empty() => format!("{}:{}", workdir.display(), p),
        _ => workdir.display().to_string(),
    };
    cmd.env("PATH", new_path);

    // 捕获输出
    cmd.stdout(Stdio::piped()).stderr(Stdio::piped());

    let start = Instant::now();
    let output = cmd.output().map_err(|e| format!("spawn testfixture: {e}"))?;
    let duration = start.elapsed().as_millis();

    let stdout = String::from_utf8_lossy(&output.stdout).into_owned();
    let stderr = String::from_utf8_lossy(&output.stderr).into_owned();
    let code = output.status.code().unwrap_or(-1);

    Ok(TestResult {
        status: if output.status.success() { "pass" } else { "fail" },
        exit_code: code,
        stdout,
        stderr,
        duration_ms: duration,
        error: None,
    })
}

fn write_asset(base: &std::path::Path, name: &str, data: &[u8], mode: u32) -> Result<(), String> {
    let path = base.join(name);
    let mut file = File::create(&path).map_err(|e| format!("create {name}: {e}"))?;
    file.write_all(data)
        .map_err(|e| format!("write {name}: {e}"))?;
    let mut perm = file
        .metadata()
        .map_err(|e| format!("metadata {name}: {e}"))?
        .permissions();
    perm.set_mode(mode);
    fs::set_permissions(&path, perm).map_err(|e| format!("chmod {name}: {e}"))?;
    Ok(())
}
