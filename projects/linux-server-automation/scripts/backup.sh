#!/bin/bash

# Linux Server Administration Project 
# Purpose: Create a timestamped backup of project documentation 


set -u 


PROJECT_DIR="$HOME/devops-notes/projects/linux-server-automation"
SOURCE_DIR="$PROJECT_DIR/docs"
BACKUP_DIR="$PROJECT_DIR/backups"
LOG_FILE="$PROJECT_DIR/logs/backup.log"


TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)
ARCHIVE="$BACKUP_DIR/docs_backup_$TIMESTAMP.tar.gz"

if [[ ! -d "$SOURCE_DIR" ]]; then
     echo "ERROR: Source directory not found: $SOURCE_DIR" >&2
     exit 1
fi


if [[ ! -d "$BACKUP_DIR" ]]; then 
    echo "ERROR: Backup directory not found: $BACKUP_DIR" >&2
    exit 1
fi


echo "[$(date '+%F %T')] Backup started." >> "$LOG_FILE"


if tar -czf "$ARCHIVE" -C "$SOURCE_DIR" .; then
if ! tar -tzf "$ARCHIVE" > /dev/null; then
     echo "ERROR: Backup archive verification failed." >> "$LOG_FILE"
     rm -f "$ARCHIVE"
     exit 1
fi 

     echo "[$(date '+%F %T')] SUCCESS: $ARCHIVE" >> "$LOG_FILE"
     echo "backup created: $ARCHIVE"
     find "$BACKUP_DIR" -type f -name "docs_backup_*.tar.gz" -mtime +59 -delete
else
     echo "[$date '+%F %T')] ERROR: Backup failed." >> "$LOG_FILE"
     rm -f "$ARCHIVE"
     echo "Backup failed." >&2
     exit 1
fi

