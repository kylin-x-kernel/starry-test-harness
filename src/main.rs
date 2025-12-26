use std::{
    collections::{HashMap, HashSet},
    env,
    fs::{self, File},
    io::{IsTerminal, Write},
    path::{Path, PathBuf},
    process::Command,
    time::Instant,
};

use anyhow::{bail, Context, Result};
use chrono::{DateTime, Local};
use clap::{Parser, ValueEnum};
use colored::Colorize;
use regex::Regex;
use serde::{Deserialize, Serialize};
use serde_json::Value as JsonValue;

fn main() -> Result<()> {
    let cli = Cli::parse();
    let workspace = fs::canonicalize(&cli.workspace)
        .with_context(|| format!("failed to resolve workspace {}", cli.workspace.display()))?;

    match cli.action {
        Action::Run => run_suite(cli.suite, &workspace),
    }
}

#[derive(Parser, Debug)]
#[command(
    name = "starry-test-harness",
    version,
    about = "Rust harness for Starry OS test suites"
)]
struct Cli {
    #[arg(value_enum)]
    suite: Suite,
    #[arg(value_enum, default_value = "run")]
    action: Action,
    #[arg(long, default_value = ".")]
    workspace: PathBuf,
}

#[derive(Clone, Copy, Debug, ValueEnum)]
enum Suite {
    #[value(name = "ci-test")]
    CiTest,
    #[value(name = "ci-test-iter")]
    CiTestIter,
    #[value(name = "stress-test")]
    StressTest,
    #[value(name = "daily-test")]
    DailyTest,
}

impl Suite {
    fn dir_name(&self) -> &'static str {
        match self {
            Suite::CiTest => "ci",
            Suite::CiTestIter => "ci-test-iter",
            Suite::StressTest => "stress",
            Suite::DailyTest => "daily",
        }
    }

    fn display_name(&self) -> &'static str {
        match self {
            Suite::CiTest => "CI Test",
            Suite::CiTestIter => "CI Iteration Test",
            Suite::StressTest => "Stress Test",
            Suite::DailyTest => "Daily Test",
        }
    }
}

#[derive(Clone, Copy, Debug, ValueEnum)]
enum Action {
    Run,
}

#[derive(Debug, Deserialize)]
struct Manifest {
    name: Option<String>,
    description: Option<String>,
    build_script: Option<String>,
    arch: Option<String>,
    #[serde(default = "default_timeout")]
    default_timeout_secs: u64,
    #[serde(default)]
    cases: Vec<TestCase>,
}

#[derive(Debug, Deserialize, Clone)]
struct TestCase {
    name: String,
    description: Option<String>,
    path: String,
    #[serde(default)]
    args: Vec<String>,
    timeout_secs: Option<u64>,
    #[serde(default)]
    allow_failure: bool,
}

#[derive(Debug, Serialize)]
struct CaseDetail {
    name: String,
    status: String,
    duration_ms: u128,
    exit_code: Option<i32>,
    allow_failure: bool,
    log_path: PathBuf,
    #[serde(skip_serializing_if = "Option::is_none")]
    test_metrics: Option<TestMetrics>,
    #[serde(skip_serializing_if = "Option::is_none")]
    error_summary: Option<String>,
}

#[derive(Debug, Serialize, Deserialize, Clone)]
struct TestMetrics {
    #[serde(skip_serializing_if = "Option::is_none")]
    score: Option<f64>,
    #[serde(skip_serializing_if = "Option::is_none")]
    score_type: Option<String>,
    #[serde(skip_serializing_if = "Option::is_none")]
    metrics: Option<Vec<JsonValue>>,
    #[serde(skip_serializing_if = "Option::is_none")]
    raw_data: Option<JsonValue>,
}

#[derive(Debug, Serialize)]
struct RunSummary {
    suite: String,
    action: String,
    description: Option<String>,
    arch: Option<String>,
    started_at: DateTime<Local>,
    finished_at: DateTime<Local>,
    total: usize,
    passed: usize,
    failed: usize,
    soft_failed: usize,
    log_file: PathBuf,
    error_log: Option<PathBuf>,
    case_logs_root: PathBuf,
    artifacts_root: PathBuf,
    cases: Vec<CaseDetail>,
}

#[derive(Debug)]
struct CaseOutcome {
    status: CaseStatus,
    duration_ms: u128,
    exit_code: Option<i32>,
    log_path: PathBuf,
    failed_details: Option<Vec<FailedSubCaseDetail>>,
    test_metrics: Option<TestMetrics>,
    error_summary: Option<String>,
}

#[derive(Debug, Clone)]
struct FailedSubCaseDetail {
    name: String,
    summary: String,
}

#[derive(Debug)]
enum CaseStatus {
    Passed,
    Failed,
    SoftFailed,
}

impl CaseStatus {
    fn as_str(&self) -> &'static str {
        match self {
            CaseStatus::Passed => "passed",
            CaseStatus::Failed => "failed",
            CaseStatus::SoftFailed => "soft_failed",
        }
    }
}

fn default_timeout() -> u64 {
    600
}

fn run_suite(suite: Suite, workspace: &Path) -> Result<()> {
    let manifest = load_manifest(workspace, suite)?;
    if manifest.cases.is_empty() {
        bail!(
            "suite {} has no cases defined - add entries to {}",
            suite.display_name(),
            manifest_path(workspace, suite).display()
        );
    }
    let cases = filter_cases(&manifest.cases)?;
    if cases.is_empty() {
        bail!("no test cases selected after applying CASES filter");
    }

    let logs_root = workspace.join("logs").join(suite.dir_name());
    fs::create_dir_all(&logs_root)?;
    let timestamp = Local::now().format("%Y%m%d-%H%M%S").to_string();
    let run_dir = logs_root.join(&timestamp);
    fs::create_dir_all(&run_dir)?;
    let run_log_path = run_dir.join("suite.log");
    let case_logs_root = run_dir.join("cases");
    fs::create_dir_all(&case_logs_root)?;
    let artifacts_root = run_dir.join("artifacts");
    fs::create_dir_all(&artifacts_root)?;
    let mut run_log = File::create(&run_log_path)?;
    let start = Local::now();
    let suite_label = manifest
        .name
        .clone()
        .unwrap_or_else(|| suite.display_name().to_string());

    let suite_header = format!(
        "[suite] {} ({}) - {}",
        suite_label,
        manifest.arch.as_deref().unwrap_or("unknown arch"),
        manifest
            .description
            .as_deref()
            .unwrap_or("no description provided")
    );
    writeln!(run_log, "{}", suite_header)?;

    println!();
    println!("{}", "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━".bright_blue());
    println!("{}", format!("  {} Test Suite", suite_label).bright_white().bold());
    println!("{}", "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━".bright_blue());
    println!("  {}: {}", "Architecture".bright_cyan(), manifest.arch.as_deref().unwrap_or("unknown"));
    println!("  {}: {}", "Description".bright_cyan(), manifest.description.as_deref().unwrap_or("no description"));
    println!("  {}: {}{}", "Test Cases".bright_cyan(), cases.len(), if cases.len() != manifest.cases.len() { format!(" (filtered from {})", manifest.cases.len()) } else { String::new() });
    println!("{}", "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━".bright_blue());
    println!();

    maybe_run_build(&manifest, suite, workspace, &mut run_log)?;

    let mut case_details = Vec::new();
    let mut passed = 0usize;
    let mut failed = 0usize;
    let mut soft_failed = 0usize;

    for (idx, case) in cases.iter().enumerate() {
        let case_slug = sanitize_case_name(&case.name);
        let case_log_path = case_logs_root.join(format!("{case_slug}.log"));
        let case_artifact_dir = artifacts_root.join(&case_slug);
        fs::create_dir_all(&case_artifact_dir)?;

        println!();
        let case_header = format!("┌─ Test Case [{}/{}]: {}", idx + 1, cases.len(), case.name);
        println!("{}", case_header.bright_yellow());

        let desc_line_count = if case.description.is_some() { 1 } else { 0 };
        if let Some(desc) = &case.description {
            println!("{} {}", "│ ".bright_yellow(), desc.bright_white());
        }
        println!("{} {}: {}", "│ ".bright_yellow(), "Log".bright_cyan(), rel_path(&case_log_path, workspace).display().to_string().dimmed());
        println!("{} {}", "└─".bright_yellow(), "Running...".bright_yellow());

        let case_start_msg = format!(
            "[case] starting {} -> {}",
            case.name,
            rel_path(&case_log_path, workspace).display()
        );
        writeln!(run_log, "{}", case_start_msg)?;
        if let Some(desc) = &case.description {
            writeln!(run_log, "        {}", desc)?;
        }

        let outcome = run_case(
            case,
            workspace,
            &case_log_path,
            manifest.default_timeout_secs,
            &run_dir,
            &case_artifact_dir,
            &timestamp,
            &case_slug,
        )?;

        let status_str = outcome.status.as_str();
        let case_finish_msg = format!(
            "[case] {} finished in {} ms (exit {:?})",
            case.name, outcome.duration_ms, outcome.exit_code
        );
        writeln!(run_log, "{}", case_finish_msg)?;

        let duration_sec = outcome.duration_ms as f64 / 1000.0;
        let (status_colored, box_color): (colored::ColoredString, fn(colored::ColoredString) -> colored::ColoredString) = match outcome.status {
            CaseStatus::Passed => ("✓ PASSED".to_string().bright_green(), |s| s.bright_green()),
            CaseStatus::Failed => ("✗ FAILED".to_string().bright_red(), |s| s.bright_red()),
            CaseStatus::SoftFailed => ("⚠ SOFT FAIL".to_string().bright_yellow(), |s| s.bright_yellow()),
        };

        // Check if stdout is a TTY (interactive terminal)
        let is_tty = std::io::stdout().is_terminal();
        let failed_lines = outcome
            .failed_details
            .as_ref()
            .map(|details| format_failed_subtest_lines(details))
            .unwrap_or_default();
        
        // Format metrics info if available
        let metrics_lines = outcome
            .test_metrics
            .as_ref()
            .map(|metrics| format_metrics_lines(metrics))
            .unwrap_or_default();
        
        // Format error summary if available
        let error_lines = outcome
            .error_summary
            .as_ref()
            .map(|err| vec![format!("  Error: {}", err)])
            .unwrap_or_default();

        if is_tty {
            // Move cursor up to the start of the test case box and redraw with result color
            // Number of lines to move up: 1 (└─ line) + 1 (Log line) + desc_line_count + 1 (header)
            let lines_to_move = 3 + desc_line_count;
            for _ in 0..lines_to_move {
                print!("\x1b[1A");  // Move up
            }
            print!("\r");  // Move to beginning of line

            // Redraw the entire box with the result color
            print!("\x1b[2K");  // Clear line
            println!("{}", box_color(case_header.into()));
            if let Some(desc) = &case.description {
                print!("\x1b[2K");  // Clear line
                println!("{} {}", box_color("│ ".into()), desc.bright_white());
            }
            print!("\x1b[2K");  // Clear line
            println!("{} {}: {}", box_color("│ ".into()), "Log".bright_cyan(), rel_path(&case_log_path, workspace).display().to_string().dimmed());
            
            // Determine if we have additional content to display
            let has_extra_content = !failed_lines.is_empty() || !metrics_lines.is_empty() || !error_lines.is_empty();
            
            if !has_extra_content {
                print!("\x1b[2K");  // Clear line
                println!(
                    "{} {} {}",
                    box_color("└─".into()),
                    status_colored,
                    format!("(completed in {:.2}s)", duration_sec).dimmed()
                );
            } else {
                print!("\x1b[2K");  // Clear line
                println!(
                    "{} {} {}",
                    box_color("│ ".into()),
                    status_colored,
                    format!("(completed in {:.2}s)", duration_sec).dimmed()
                );
                
                // Display metrics first
                let metrics_count = metrics_lines.len();
                for (idx, line) in metrics_lines.iter().enumerate() {
                    let is_last = error_lines.is_empty() && failed_lines.is_empty() && idx + 1 == metrics_count;
                    if is_last {
                        println!(
                            "{} {}",
                            box_color("└─".into()),
                            line.bright_cyan()
                        );
                    } else {
                        println!(
                            "{} {}",
                            box_color("│ ".into()),
                            line.bright_cyan()
                        );
                    }
                }
                
                // Display error summary
                let error_count = error_lines.len();
                for (idx, line) in error_lines.iter().enumerate() {
                    let is_last = failed_lines.is_empty() && idx + 1 == error_count;
                    if is_last {
                        println!(
                            "{} {}",
                            box_color("└─".into()),
                            line.bright_red().bold()
                        );
                    } else {
                        println!(
                            "{} {}",
                            box_color("│ ".into()),
                            line.bright_red().bold()
                        );
                    }
                }
                
                // Display failures (Rust test failures)
                for (idx, line) in failed_lines.iter().enumerate() {
                    let indent = if idx == 0 { "  " } else { "    " };
                    let formatted = format!("{}{}", indent, line);
                    if idx + 1 == failed_lines.len() {
                        println!(
                            "{} {}",
                            box_color("└─".into()),
                            formatted.bright_red()
                        );
                    } else {
                        println!(
                            "{} {}",
                            box_color("│ ".into()),
                            formatted.bright_red()
                        );
                    }
                }
            }
        } else {
            // Non-TTY (like GitHub Actions): just print the result line
            println!("{} {}", status_colored, format!("(completed in {:.2}s)", duration_sec).dimmed());
            for line in &metrics_lines {
                println!("{}", line.bright_cyan());
            }
            for line in &error_lines {
                println!("{}", line.bright_red().bold());
            }
            for line in &failed_lines {
                println!("{}", line.bright_red());
            }
        }

        match outcome.status {
            CaseStatus::Passed => passed += 1,
            CaseStatus::Failed => failed += 1,
            CaseStatus::SoftFailed => soft_failed += 1,
        }

        case_details.push(CaseDetail {
            name: case.name.clone(),
            status: status_str.to_string(),
            duration_ms: outcome.duration_ms,
            exit_code: outcome.exit_code,
            allow_failure: case.allow_failure,
            log_path: rel_path(&outcome.log_path, workspace),
            test_metrics: outcome.test_metrics,
            error_summary: outcome.error_summary,
        });
    }

    let end = Local::now();
    let error_log_path = run_dir.join("error.log");
    let mut error_log = None;
    if failed > 0 {
        let message = format!(
            "{} cases failed. See {} for details.",
            failed,
            rel_path(&run_log_path, workspace).display()
        );
        fs::write(&error_log_path, message)?;
        error_log = Some(rel_path(&error_log_path, workspace));
    } else if error_log_path.exists() {
        let _ = fs::remove_file(&error_log_path);
    }

    let summary = RunSummary {
        suite: suite_label,
        action: "run".into(),
        description: manifest.description.clone(),
        arch: manifest.arch.clone(),
        started_at: start,
        finished_at: end,
        total: cases.len(),
        passed,
        failed,
        soft_failed,
        log_file: rel_path(&run_log_path, workspace),
        error_log,
        case_logs_root: rel_path(&case_logs_root, workspace),
        artifacts_root: rel_path(&artifacts_root, workspace),
        cases: case_details,
    };

    let summary_path = logs_root.join("last_run.json");
    fs::write(&summary_path, serde_json::to_string_pretty(&summary)?)?;

    let total_duration = end.signed_duration_since(start);
    let duration_secs = total_duration.num_milliseconds() as f64 / 1000.0;

    println!();
    println!("{}", "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━".bright_blue());
    println!("{}", "  Test Suite Summary".bright_white().bold());
    println!("{}", "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━".bright_blue());
    println!("  {}: {} tests", "Total".bright_cyan(), summary.total);
    println!("  {}: {}", "Passed".bright_green(), passed.to_string().bright_green().bold());
    if failed > 0 {
        println!("  {}: {}", "Failed".bright_red(), failed.to_string().bright_red().bold());
    }
    if soft_failed > 0 {
        println!("  {}: {}", "Soft Fail".bright_yellow(), soft_failed.to_string().bright_yellow().bold());
    }
    println!("  {}: {:.2}s", "Duration".bright_cyan(), duration_secs);
    println!("  {}: {}", "Log".bright_cyan(), summary.log_file.display().to_string().dimmed());
    println!("{}", "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━".bright_blue());
    println!();

    if failed > 0 {
        bail!(
            "{} failed. Consult {}",
            suite.display_name(),
            summary.log_file.display()
        );
    }

    Ok(())
}

fn run_case(
    case: &TestCase,
    workspace: &Path,
    log_path: &Path,
    default_timeout: u64,
    run_dir: &Path,
    case_artifact_dir: &Path,
    run_id: &str,
    case_slug: &str,
) -> Result<CaseOutcome> {
    let script_path = workspace.join(&case.path);
    if !script_path.exists() {
        bail!(
            "test case {} missing script {}",
            case.name,
            script_path.display()
        );
    }

    let mut log_file = File::create(log_path)?;
    writeln!(log_file, "[case] {}", case.name)?;
    writeln!(
        log_file,
        "[case] command: {} {}",
        script_path.display(),
        case.args.join(" ")
    )?;
    let timeout_secs = case.timeout_secs.unwrap_or(default_timeout);
    writeln!(log_file, "[case] timeout budget: {}s", timeout_secs)?;

    let mut command = Command::new(&script_path);
    command.current_dir(workspace);
    if !case.args.is_empty() {
        command.args(&case.args);
    }
    fs::create_dir_all(case_artifact_dir)?;
    let case_log_dir = log_path.parent().unwrap_or_else(|| Path::new("."));
    command.env("STARRY_WORKSPACE_ROOT", workspace);
    command.env("STARRY_RUN_ID", run_id);
    command.env("STARRY_RUN_DIR", run_dir);
    command.env("STARRY_CASE_NAME", &case.name);
    command.env("STARRY_CASE_SLUG", case_slug);
    command.env("STARRY_CASE_LOG_PATH", log_path);
    command.env("STARRY_CASE_LOG_DIR", case_log_dir);
    command.env("STARRY_CASE_ARTIFACT_DIR", case_artifact_dir);
    command.env("STARRY_CASE_TIMEOUT_SECS", timeout_secs.to_string());

    let start = Instant::now();
    let output = command
        .output()
        .with_context(|| format!("failed to run {}", case.name))?;
    let duration = start.elapsed().as_millis();
    let failed_details = extract_failed_subtests(&output.stdout);

    log_file.write_all(&output.stdout)?;
    log_file.write_all(&output.stderr)?;

    let status = if output.status.success() {
        CaseStatus::Passed
    } else if case.allow_failure {
        CaseStatus::SoftFailed
    } else {
        CaseStatus::Failed
    };

    // Try to load test metrics from artifacts directory
    let test_metrics = load_test_metrics(case_artifact_dir);
    
    // Extract error summary for failed tests
    let error_summary = if !output.status.success() {
        extract_error_summary(&output.stdout, &output.stderr, case_artifact_dir)
    } else {
        None
    };

    Ok(CaseOutcome {
        status,
        duration_ms: duration,
        exit_code: output.status.code(),
        log_path: log_path.to_path_buf(),
        failed_details,
        test_metrics,
        error_summary,
    })
}

fn load_manifest(workspace: &Path, suite: Suite) -> Result<Manifest> {
    let path = manifest_path(workspace, suite);
    let content = fs::read_to_string(&path)
        .with_context(|| format!("failed to read manifest {}", path.display()))?;
    toml::from_str(&content).with_context(|| format!("failed to parse manifest {}", path.display()))
}

fn manifest_path(workspace: &Path, suite: Suite) -> PathBuf {
    workspace
        .join("tests")
        .join(suite.dir_name())
        .join("suite.toml")
}

fn maybe_run_build(
    manifest: &Manifest,
    suite: Suite,
    workspace: &Path,
    log: &mut File,
) -> Result<()> {
    let script = manifest
        .build_script
        .as_deref()
        .unwrap_or("scripts/build_stub.sh");
    let script_path = workspace.join(script);
    if !script_path.exists() {
        let skip_msg = format!(
            "[build] skipped build step because {} does not exist",
            script_path.display()
        );
        writeln!(log, "{}", skip_msg)?;
        println!("{}", skip_msg);
        return Ok(());
    }

    let build_start_msg = format!(
        "[build] executing {} for {}",
        script_path.display(),
        suite.display_name()
    );
    writeln!(log, "{}", build_start_msg)?;
    println!("{}", build_start_msg);
    let output = Command::new(&script_path)
        .arg(suite.dir_name())
        .current_dir(workspace)
        .output()
        .with_context(|| format!("failed to run build script {}", script_path.display()))?;
    log.write_all(&output.stdout)?;
    log.write_all(&output.stderr)?;
    print!("{}", String::from_utf8_lossy(&output.stdout));
    eprint!("{}", String::from_utf8_lossy(&output.stderr));
    Ok(())
}


fn filter_cases(cases: &[TestCase]) -> Result<Vec<TestCase>> {
    let raw = match env::var("CASES") {
        Ok(v) if !v.trim().is_empty() => v,
        _ => return Ok(cases.to_vec()),
    };

    let selected: HashSet<String> = raw
        .split(|c: char| c == ',' || c.is_whitespace())
        .filter_map(|s| {
            let trimmed = s.trim();
            if trimmed.is_empty() { None } else { Some(trimmed.to_string()) }
        })
        .collect();
    if selected.is_empty() {
        return Ok(cases.to_vec());
    }

    let filtered = cases
        .iter()
        .cloned()
        .filter(|c| {
            let slug = sanitize_case_name(&c.name);
            selected.contains(&c.name) || selected.contains(&slug)
        })
        .collect::<Vec<_>>();
    Ok(filtered)
}

fn rel_path(path: &Path, workspace: &Path) -> PathBuf {
    path.strip_prefix(workspace).unwrap_or(path).to_path_buf()
}

fn sanitize_case_name(name: &str) -> String {
    name.chars()
        .map(|c| {
            if c.is_ascii_alphanumeric() {
                c.to_ascii_lowercase()
            } else {
                '-'
            }
        })
        .collect::<String>()
        .trim_matches('-')
        .to_string()
}

fn extract_failed_subtests(stdout: &[u8]) -> Option<Vec<FailedSubCaseDetail>> {
    let content = String::from_utf8_lossy(stdout);
    let fail_pattern =
        Regex::new(r"(?m)^test\s+([^\s]+)\s+\.\.\.\s+FAILED\b").expect("valid regex");
    let section_pattern =
        Regex::new(r"^----\s+([^\s]+)\s+stdout\s+----").expect("valid regex");

    let mut sections: HashMap<String, Vec<String>> = HashMap::new();
    let mut current_name: Option<String> = None;
    let mut failed_names = HashSet::new();
    let mut in_failures_block = false;

    for line in content.lines() {
        // Parse failure details sections
        if let Some(caps) = section_pattern.captures(line) {
            let name = caps[1].to_string();
            current_name = Some(name.clone());
            sections.entry(name).or_default();
            continue;
        }
        
        // Parse "failures:" block
        if line.trim() == "failures:" {
            in_failures_block = true;
            current_name = None;
            continue;
        }
        if in_failures_block {
            if line.trim().is_empty() || line.starts_with("test result:") {
                in_failures_block = false;
            } else {
                failed_names.insert(line.trim().to_string());
            }
            continue;
        }

        if let Some(name) = current_name.as_ref() {
            if let Some(body) = sections.get_mut(name) {
                body.push(line.to_string());
            }
        }
    }

    // Also capture "test ... FAILED" lines as a backup
    for caps in fail_pattern.captures_iter(&content) {
        failed_names.insert(caps[1].to_string());
    }

    let mut failures = Vec::new();
    for name in failed_names {
        let summary = sections
            .get(&name)
            .map(|body| summarize_failure_body(body))
            .unwrap_or_else(|| "see log for details".to_string());
        failures.push(FailedSubCaseDetail { name, summary });
    }

    // Sort for consistent output
    failures.sort_by(|a, b| a.name.cmp(&b.name));

    if failures.is_empty() {
        None
    } else {
        Some(failures)
    }
}

fn format_failed_subtest_lines(details: &[FailedSubCaseDetail]) -> Vec<String> {
    if details.is_empty() {
        return Vec::new();
    }
    let mut lines = Vec::new();
    lines.push(format!("Failed tests ({}):", details.len()));
    for detail in details {
        let suffix = if detail.summary.is_empty() {
            String::new()
        } else {
            format!(": {}", detail.summary)
        };
        lines.push(format!("- {}{}", detail.name, suffix));
    }
    lines
}

fn summarize_failure_body(lines: &[String]) -> String {
    let mut location = String::new();
    let mut message = String::new();

    for raw in lines {
        let trimmed = raw.trim();
        if trimmed.is_empty() {
            continue;
        }

        if trimmed.starts_with("thread '") && trimmed.contains("panicked at") {
            if let Some(idx) = trimmed.find("panicked at ") {
                location = trimmed[idx + 12..].trim_end_matches(':').to_string();
            }
        }

        let is_meta = trimmed.starts_with("thread '")
            || trimmed.starts_with("note:")
            || trimmed.starts_with("stack backtrace:")
            || trimmed.starts_with("Backtrace:");

        if !is_meta && message.is_empty() {
            message = trimmed.to_string();
        }
    }

    if message.is_empty() {
        message = "see log for details".to_string();
    }

    if !location.is_empty() {
        format!("{} ({})", message, location)
    } else {
        message
    }
}

fn load_test_metrics(artifact_dir: &Path) -> Option<TestMetrics> {
    let results_path = artifact_dir.join("results.json");
    if !results_path.exists() {
        return None;
    }

    let content = fs::read_to_string(&results_path).ok()?;
    let raw_json: JsonValue = serde_json::from_str(&content).ok()?;

    let score = raw_json.get("score")?.as_f64();
    let score_type = raw_json.get("score_type")
        .and_then(|v| v.as_str())
        .map(|s| s.to_string());
    let metrics = raw_json.get("metrics")
        .and_then(|v| v.as_array())
        .map(|arr| arr.clone());

    Some(TestMetrics {
        score,
        score_type,
        metrics,
        raw_data: Some(raw_json),
    })
}

fn format_metrics_lines(metrics: &TestMetrics) -> Vec<String> {
    let mut lines = Vec::new();

    // Display score if available
    if let Some(score) = metrics.score {
        let score_label = metrics.score_type.as_deref().unwrap_or("Score");
        lines.push(format!("  {}: {:.2}", score_label, score));
    }

    // Display individual metrics if available
    if let Some(metric_list) = &metrics.metrics {
        if !metric_list.is_empty() && metric_list.len() <= 5 {
            // Only show first few metrics to avoid cluttering
            for metric in metric_list {
                if let Some(name) = metric.get("name").and_then(|v| v.as_str()) {
                    if let Some(index) = metric.get("index").and_then(|v| v.as_f64()) {
                        lines.push(format!("    {}: {:.2}", name, index));
                    } else if let Some(result) = metric.get("result").and_then(|v| v.as_f64()) {
                        lines.push(format!("    {}: {:.2}", name, result));
                    }
                }
            }
        } else if metric_list.len() > 5 {
            lines.push(format!("  {} metrics collected (see results.json)", metric_list.len()));
        }
    }

    lines
}

fn extract_error_summary(stdout: &[u8], stderr: &[u8], artifact_dir: &Path) -> Option<String> {
    // Try to find error in stderr first
    let stderr_content = String::from_utf8_lossy(stderr);
    
    // Check for common error patterns in stderr
    for line in stderr_content.lines().rev().take(50) {
        let trimmed = line.trim();
        
        // Skip empty lines and debug/info messages
        if trimmed.is_empty() 
            || trimmed.starts_with('[')
            || trimmed.starts_with("make[")
            || trimmed.starts_with("qemu-system")
            || trimmed.contains("terminating on signal") {
            continue;
        }
        
        // Look for error indicators
        if trimmed.contains("Error:") 
            || trimmed.contains("error:")
            || trimmed.contains("ERROR")
            || trimmed.contains("Can't")
            || trimmed.contains("failed")
            || trimmed.contains("FAILED")
            || trimmed.starts_with("Run:") {
            // Clean up ANSI codes
            let cleaned = regex::Regex::new(r"\x1b\[[0-9;]*[A-Za-z]")
                .ok()?
                .replace_all(trimmed, "");
            let cleaned = cleaned.trim();
            if !cleaned.is_empty() && cleaned.len() < 200 {
                return Some(cleaned.to_string());
            }
        }
    }
    
    // Check vm stderr file
    for entry in fs::read_dir(artifact_dir).ok()? {
        let entry = entry.ok()?;
        let path = entry.path();
        if path.extension().and_then(|s| s.to_str()) == Some("err") {
            if let Ok(content) = fs::read_to_string(&path) {
                for line in content.lines().rev().take(30) {
                    let trimmed = line.trim();
                    
                    if trimmed.is_empty() 
                        || trimmed.starts_with('[')
                        || trimmed.starts_with("make[")
                        || trimmed.starts_with("qemu-system")
                        || trimmed.contains("terminating on signal") {
                        continue;
                    }
                    
                    if trimmed.contains("Can't")
                        || trimmed.contains("Error")
                        || trimmed.contains("error")
                        || trimmed.contains("failed")
                        || trimmed.starts_with("Run:") {
                        let cleaned = regex::Regex::new(r"\x1b\[[0-9;]*[A-Za-z]")
                            .ok()?
                            .replace_all(trimmed, "");
                        let cleaned = cleaned.trim();
                        if !cleaned.is_empty() && cleaned.len() < 200 {
                            return Some(cleaned.to_string());
                        }
                    }
                }
            }
        }
    }
    
    // Fallback to stdout
    let stdout_content = String::from_utf8_lossy(stdout);
    for line in stdout_content.lines().rev().take(50) {
        let trimmed = line.trim();
        if trimmed.contains("Error") || trimmed.contains("FAIL") {
            let cleaned = regex::Regex::new(r"\x1b\[[0-9;]*[A-Za-z]")
                .ok()?
                .replace_all(trimmed, "");
            let cleaned = cleaned.trim();
            if !cleaned.is_empty() && cleaned.len() < 200 {
                return Some(cleaned.to_string());
            }
        }
    }
    
    None
}
