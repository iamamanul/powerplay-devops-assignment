#!/bin/bash
USAGE=$(df / | awk 'NR==2 {gsub("%","",$5); print $5}')
if [ "$USAGE" -ge 80 ]; then
    echo "Disk usage on $(hostname) is at ${USAGE}%" | mail -s "Disk Alert" amanulmat@gmail.com
fi
