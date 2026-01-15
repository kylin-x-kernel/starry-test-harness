#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2025 Weikang Guo <guoweikang.kernel@gmail.com>
# Copyright (C) 2025 KylinSoft Co., Ltd. <https://www.kylinos.cn/>
# See LICENSE for license details.
#
# This file has been modified by KylinSoft on 2025.
#
# Driver for the Arm Generic Interrupt Controller version 3 (or 4).

import argparse
import json
import os
import smtplib
from email.message import EmailMessage
from pathlib import Path


def parse_recipients(env_value: str | None, file_path: str | None) -> list[str]:
    # 从环境变量和文件里收集收件人，去重后返回
    recipients: list[str] = []
    if env_value:
        for part in env_value.replace(";", ",").split(","):
            addr = part.strip()
            if addr:
                recipients.append(addr)
    if file_path:
        for line in Path(file_path).read_text().splitlines():
            line = line.strip()
            if line and not line.startswith("#"):
                recipients.append(line)
    return sorted(set(recipients))


def load_summary(path: str) -> str:
    # 从 last_run.json 抽取简要失败信息
    p = Path(path)
    if not p.exists():
        return "No last_run.json found."
    try:
        data = json.loads(p.read_text())
    except json.JSONDecodeError:
        return "Failed to parse last_run.json."
    cases = data.get("cases", [])
    failed = [c.get("name", "unknown") for c in cases if c.get("status") == "failed"]
    summary = [
        f"started_at: {data.get('started_at', '')}",
        f"finished_at: {data.get('finished_at', '')}",
        f"duration_ms: {data.get('duration_ms', '')}",
        f"failed_cases: {', '.join(failed) if failed else 'none'}",
    ]
    return "\n".join(summary)


def send_mail(
    host: str,
    port: int,
    user: str | None,
    password: str | None,
    use_starttls: bool,
    from_addr: str,
    to_addrs: list[str],
    subject: str,
    body: str,
) -> None:
    # 发送邮件（支持 STARTTLS 和登录）
    msg = EmailMessage()
    msg["From"] = from_addr
    msg["To"] = ", ".join(to_addrs)
    msg["Subject"] = subject
    msg.set_content(body)

    with smtplib.SMTP(host, port) as smtp:
        smtp.ehlo()
        if use_starttls:
            smtp.starttls()
            smtp.ehlo()
        if user and password:
            smtp.login(user, password)
        smtp.send_message(msg)


def main() -> int:
    # 读取参数与环境变量，拼装邮件并发送
    parser = argparse.ArgumentParser(description="Send daily-test failure notification email.")
    parser.add_argument("--recipients-file", default=None)
    parser.add_argument("--subject", default=None)
    parser.add_argument("--body-file", default=None)
    parser.add_argument("--last-run", default="logs/daily/last_run.json")
    parser.add_argument("--run-url", default=None)
    args = parser.parse_args()

    smtp_host = os.environ.get("SMTP_HOST")
    # SMTP 配置从环境变量读取，便于在 CI 里注入
    smtp_port = int(os.environ.get("SMTP_PORT", "587"))
    smtp_user = os.environ.get("SMTP_USER")
    smtp_pass = os.environ.get("SMTP_PASS")
    smtp_starttls = os.environ.get("SMTP_STARTTLS", "1") != "0"
    mail_from = os.environ.get("MAIL_FROM", smtp_user or "noreply@example.com")
    mail_to = os.environ.get("MAIL_TO")

    recipients = parse_recipients(mail_to, args.recipients_file)
    # 生成邮件标题与正文（附上 GitHub Actions 运行链接）
    if not smtp_host:
        raise SystemExit("SMTP_HOST is required.")
    if not recipients:
        raise SystemExit("No recipients provided; set MAIL_TO or --recipients-file.")

    repo = os.environ.get("GITHUB_REPOSITORY", "unknown-repo")
    run_id = os.environ.get("GITHUB_RUN_ID", "")
    run_url = args.run_url
    if not run_url and os.environ.get("GITHUB_SERVER_URL") and run_id:
        run_url = f"{os.environ['GITHUB_SERVER_URL']}/{repo}/actions/runs/{run_id}"

    subject = args.subject or f"[daily-test] Failure in {repo}"
    summary = load_summary(args.last_run)
    extra = []
    if run_url:
        extra.append(f"run_url: {run_url}")
    body = summary
    if extra:
        body = body + "\n" + "\n".join(extra)
    if args.body_file:
        body = Path(args.body_file).read_text() + "\n\n" + body

    send_mail(
        smtp_host,
        smtp_port,
        smtp_user,
        smtp_pass,
        smtp_starttls,
        mail_from,
        recipients,
        subject,
        body,
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
