# Linux Server Administration and Automation 


## Project Goal 

Build a Linux administration project using Bash scripting and strandard linux tools.


## Features 

- User and group management 
- Secure file and directory permissions 
- Automated backups 
- Scheduled jobs using cron 
- Basic system monitoring and logging


## Environment
 
- Operating System: Ubuntu 
- Shell: bash 
- version Control: Git 


## Project Status 

- Project directory structure created 
- DevOps group created 
- Group ownership and permissions configured 
- Timestamped compressed backups implemented and tested
- Backup success and failure logging configured
- Cron job configured for scheduled execution


## System Monitoring 

- CPU load monitoring 
- RAM usage monitoring with 80% warning threshold
- Disk usage report
- Monitoring logs saved to logs/monitor.log
- Scheduled execution every 5 minutes using cron 


## Backup Recovery Procedure

### Purpose

To verify backup archives and restore project files safely.

### Steps

1. List available backup archives and select the required backup.
2. Verify archive integrity using the tar command.
3. Create a separate restore-test directory.
4. Extract the backup into the restore-test directory.
5. Verify restored files using the find command.
6. Check important files to confirm the restored content is readable.

### Safety

- Always restore files into a separate directory for testing.
- Verify restored data before replacing original files.
- Keep backup archives protected from unauthorized access.

