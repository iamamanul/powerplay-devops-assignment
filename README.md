# DevOps Intern Assignment

This repository contains all the work I completed for the DevOps Intern assignment.  
I have followed all the steps mentioned in the PDF and included all required files, scripts, and screenshots.

---

## Part 1 – EC2 Setup and User Configuration

- Launched an Ubuntu t2.micro EC2 instance.
- Created a new user `devops_intern`.
- Added passwordless sudo access using visudo.
- Updated the system hostname.
- Verified the setup using:
  - `hostname`
  - `sudo whoami`
  - `/etc/passwd` entry

**Screenshot:** `screenshots/part1.png`

---

## Part 2 – Web Service Setup

- Installed Nginx on the EC2 instance.
- Retrieved the instance ID using IMDSv2.
- Created an HTML file at `/var/www/html/index.html` displaying:
  - My name
  - Instance ID
  - Server uptime

**Screenshot:** `screenshots/part2.png`

---

## Part 3 – Monitoring Script and Cron Job

- Created the script `system_report.sh` under `/usr/local/bin/`.
- The script prints:
  - Date & Time  
  - Uptime  
  - CPU usage  
  - Memory usage  
  - Disk usage  
  - Top 3 CPU consuming processes  
- Created a cron entry in `/etc/cron.d/system_report` to execute the script every 5 minutes.
- Output is logged in `/var/log/system_report.log`.

**Screenshots:**
- `screenshots/part3-cron.png`
- `screenshots/part3-log.png`

---

## Part 4 – CloudWatch Logs Integration

- Created a CloudWatch log group: `/devops/intern-metrics`
- Created a log stream: `intern-log-stream`
- Uploaded a test message using AWS CLI
- Verified the uploaded log entries in the CloudWatch console

**Screenshots:**
- `screenshots/part4-cli.png`  
- `screenshots/part4-cloudwatch.png`

---

## Part 5 – Documentation and Cleanup

- Added all required files to this repository.
- Documented every part of the assignment in this README.
- Terminated the EC2 instance after completing the assignment.

---

## Bonus (Optional)

### 1. Systemd Timer  
Created a systemd service and timer to run the system report script every 5 minutes.

Files:
- `systemd/system-report.service`  
- `systemd/system-report.timer`

**Screenshot:** `screenshots/bonus-systemd-timer.png`

### 2. Disk Usage Email Alert  
Added a script to send an email alert if disk usage exceeds 80%.

Files:
- `scripts/disk_alert.sh`  
- `cron/disk_alert`  

**Screenshot:** `screenshots/bonus-disk-alert.png`

---


