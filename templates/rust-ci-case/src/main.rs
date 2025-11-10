use anyhow::Result;
use test_utils::{cleanup_file, temp_file, write_bytes};

fn main() {
    if let Err(err) = run() {
        eprintln!("FAIL: {{project-name}} -> {err}");
        std::process::exit(1);
    }
    println!("PASS: {{project-name}}");
}

fn run() -> Result<()> {
    let path = temp_file("{{project-name}}", true)?;
    write_bytes(&path, b"hello from template")?;
    cleanup_file(path)?;
    Ok(())
}
