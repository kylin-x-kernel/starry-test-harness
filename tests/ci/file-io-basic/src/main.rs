use test_utils::{append_bytes, cleanup_file, read_bytes, temp_file, write_bytes};

fn main() {
    if let Err(err) = run() {
        eprintln!("FAIL: file-io-basic -> {err}");
        std::process::exit(1);
    }
    println!("PASS: file-io-basic");
}

fn run() -> Result<(), String> {
    let file_path = temp_file("starry-file-io", true).map_err(to_string)?;

    let initial_payload = b"starry file io smoke test";
    write_bytes(&file_path, initial_payload).map_err(to_string)?;

    let append_payload = b" + append";
    append_bytes(&file_path, append_payload).map_err(to_string)?;

    let expected = {
        let mut merged = initial_payload.to_vec();
        merged.extend_from_slice(append_payload);
        merged
    };

    let read_back = read_bytes(&file_path).map_err(to_string)?;

    cleanup_file(&file_path).map_err(to_string)?;

    if read_back != expected {
        return Err(format!(
            "读回内容不一致: expected {:?}, got {:?}",
            expected, read_back
        ));
    }

    Ok(())
}

fn to_string<E: std::fmt::Display>(err: E) -> String {
    err.to_string()
}
