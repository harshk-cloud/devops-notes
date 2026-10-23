#!/bin/bash

# Linux Server Administration Project
# Purpose: Create and verify timestamped project backups

set -u

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
SOURCE_DIR="$PROJECT_DIR"
BACKUP_DIR="$PROJECT_DIR/backups"
LOG_DIR="$PROJECT_DIR/logs"
LOG_FILE="$LOG_DIR/backup.log"

log() {
    printf '[%s] %s\n' "$(date '+%F %T')" "$1" >> "$LOG_FILE"
}

if [[ ! -d "$SOURCE_DIR" ]]; then
    echo "ERROR: Source directory not found: $SOURCE_DIR" >&2
    exit 1
fi

if ! mkdir -p "$BACKUP_DIR" "$LOG_DIR"; then
    echo "ERROR: Cannot create backup or log directory." >&2
    exit 1
fi

TIMESTAMP=$(date '+%Y-%m-%d_%H-%M-%S')
ARCHIVE="$BACKUP_DIR/docs_backup_$TIMESTAMP.tar.gz"

log "Backup started."

if ! tar \
    --exclude='./backups' \
    --exclude='./logs' \
    --exclude='./restore-test' \
    --exclude='./.git' \
    -czf "$ARCHIVE" -C "$SOURCE_DIR" .; then
    log "ERROR: Backup creation failed."
    rm -f "$ARCHIVE"
    echo "Backup failed. Check $LOG_FILE" >&2
    exit 1
fi

if ! tar -tzf "$ARCHIVE" > /dev/null; then
    log "ERROR: Backup archive verification failed."
    rm -f "$ARCHIVE"
    echo "Archive verification failed. Check $LOG_FILE" >&2
    exit 1
fi

log "SUCCESS: Archive verified: $ARCHIVE"
echo "Backup created and verified: $ARCHIVE"

if ! find "$BACKUP_DIR" -maxdepth 1 -type f \
    -name 'docs_backup_*.tar.gz' -mtime +59 -delete; then
    log "WARNING: Backup retention cleanup failed."
    echo "WARNING: Retention cleanup failed. Check $LOG_FILE" >&2
fi
