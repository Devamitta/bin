#!/usr/bin/env bash

cd "/home/deva/.zshoutput/"

# Get today's date in the format YYYY-MM-DD
current_date=$(date +%Y-%m-%d)

# Define the log file prefix based on today's date
log_prefix="log_$current_date"

# Combine log files matching the prefix into a single file
cat "$log_prefix"_*.log > "$current_date".txt && \
rm "$log_prefix"_*.log

echo "=== End of Combined Logs zshoutput from $current_date ==="

# export VISUAL=nano 
# crontab -e 