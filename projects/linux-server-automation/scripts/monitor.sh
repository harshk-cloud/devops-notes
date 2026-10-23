#!/bin/bash

LOG_FILE="/home/harshkumar/devops-notes/projects/linux-server-automation/logs/monitor.log"

mkdir -p logs
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

RAM_USED=$(free | awk '/Mem:/ {printf "%.0f" , $3/$2 * 100}')

if [ "$RAM_USED" -ge 80 ]; then
   echo "WARNING: RAM usage is ${RAM_USED}%"
else
   echo "RAM usage is normal: ${RAM_USED}%"
fi

echo
echo "===== CPU Load Alert ====="

CPU_LOAD=$(awk '{print $1}' /proc/loadavg)
CPU_CORES=$(nproc)

if awk -v cpu_load="CPU_LOAD" -v cores="$CPU_CORES" 'BEGIN { exit !(load >= cores)}'; then
    echo "WARNING: CPU load ($CPU_LOAD) is at or above $CPU_CORES CPU cores"
else
    echo "CPU load is noraml: $CPU_LOAD (CPU cores: $CPU_CORES)"
fi
