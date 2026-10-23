#!/bin/bash

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
LOG_DIR="$PROJECT_DIR/logs"
LOG_FILE="$LOG_DIR/monitor.log"

mkdir -p "$LOG_DIR"
exec > >(tee -a "$LOG_FILE") 2>&1

echo "===== System Monitoring Report ====="
echo "Date: $(date)"
echo

echo "===== CPU Load ====="
uptime
echo

echo "===== Memory Usage ====="
free -h
echo

echo "===== Disk Usage ====="
df -h /
echo

echo "===== Resource Alerts ====="

RAM_USED=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')

if [ "$RAM_USED" -ge 80 ]; then
    echo "WARNING: RAM usage is ${RAM_USED}%"
else
    echo "RAM usage is normal: ${RAM_USED}%"
fi

echo
echo "===== CPU Load Alert ====="

CPU_LOAD=$(awk '{print $1}' /proc/loadavg)
CPU_CORES=$(nproc)

if awk -v cpu_load="$CPU_LOAD" -v cores="$CPU_CORES" \
    'BEGIN { exit !(cpu_load >= cores) }'; then
    echo "WARNING: CPU load ($CPU_LOAD) is at or above $CPU_CORES CPU cores"
else
    echo "CPU load is normal: $CPU_LOAD (CPU cores: $CPU_CORES)"
fi
