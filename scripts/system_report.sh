#!/bin/bash
echo "========== System Report =========="
echo "Date & Time: $(date)"
echo "Uptime: $(uptime -p)"
CPU_IDLE=$(top -bn1 | awk '/Cpu/ {print $8}')
CPU_USAGE=$(echo "100 - $CPU_IDLE" | bc)
echo "CPU Usage: ${CPU_USAGE}%"
echo "Memory Usage: $(free | awk '/Mem/ {printf("%.2f%",$3/$2*100)}')"
echo "Disk Usage: $(df -h / | awk 'NR==2 {print $5}')"
echo "Top 3 CPU Processes:"
ps -eo pid,cmd,%cpu --sort=-%cpu | head -n 4
echo ""
