# Linux Server Administration and Automation

## Project Goal

Build a practical Linux administration project using Bash scripting, system monitoring, automated backups, recovery procedures, permissions, and cron scheduling.

## Features

- User and group management
- File and directory permissions
- Timestamped compressed project backups
- Backup archive integrity verification
- Backup success and failure logging
- Backup retention for older archives
- CPU, memory, and disk monitoring
- CPU load and RAM usage alerts
- Cron-based scheduled monitoring and backups
- Restore testing in a temporary directory
- Git version control

## Environment

- Operating System: Ubuntu
- Shell: Bash
- Tools: tar, awk, find, free, df, uptime, cron, Git
- Version Control: Git and GitHub

## Project Structure

    linux-server-automation/
    ├── scripts/
    │   ├── backup.sh
    │   └── monitor.sh
    ├── backups/
    ├── logs/
    ├── README.md
    └── .gitignore

Runtime backups and logs are excluded from Git tracking.

## Backup Process

1. Determine the project directory from the script location.
2. Create the backup and log directories if required.
3. Create a timestamped compressed archive.
4. Exclude backups, logs, Git metadata, and the restore-test directory.
5. Verify archive readability using tar.
6. Log success or failure with a timestamp.
7. Remove eligible old backup archives according to the retention rule.

## Monitoring

The monitoring script reports:

- System uptime and CPU load
- Memory usage
- Root filesystem disk usage
- RAM usage warning at 80% or higher
- CPU load warning when the 1-minute load average reaches or exceeds the number of CPU cores

## Scheduling

The user crontab is configured to run monitoring every five minutes and the backup job daily at 9:00 PM India Standard Time, using the system's UTC timezone.

Confirm the current crontab and timezone before relying on the schedule.

## Validation Performed

- Bash syntax checks passed for backup.sh and monitor.sh.
- A backup archive was created successfully.
- Archive integrity verification passed.
- Exclusion checks passed for backups, logs, and Git metadata.
- A restore test recovered the README and both scripts into a temporary directory.
- Restored script syntax checks passed.
- A temporary failure simulation returned exit code 1.
- A temporary retention test removed an old test archive while preserving a recent one.

## Known Limitations

- A scheduled backup run at 9:00 PM IST has not yet been confirmed by its execution logs.
- Failure simulation verified the basic error path using a temporary script copy; it did not verify every possible backup failure.
- Retention was tested in a temporary directory, not against real backup archives.

## Restore Procedure

1. Identify the required archive in the backups directory.
2. Create a separate temporary restore directory.
3. List the archive contents using tar -tzf.
4. Extract the archive into the temporary directory.
5. Verify the recovered files before using them.

Never extract a backup over the live project without reviewing its contents and confirming the restore target.

## Project Status

Core backup and monitoring scripts have been updated and their syntax validated. Backup creation, archive integrity, exclusion checks, and a temporary restore test have passed. Scheduled backup execution and additional failure-path tests remain to be verified.
