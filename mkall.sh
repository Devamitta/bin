#!/usr/bin/env bash

echo -e "\033[1;33m We are going to make DPS and SBS dictionaries \033[0m"

# OUTPUT_FILE="/home/deva/logs/ram_swap_usage_mkall.tsv"

# # Start the RAM and SWAP monitoring in the background
# {
#     echo -e "Time\tUsed RAM\tFree RAM\tBuffer\tCache\tUsed SWAP\tFree SWAP" > $OUTPUT_FILE
#     while true; do
#         echo -ne "$(date '+%H:%M:%S')\t" >> $OUTPUT_FILE
#         echo -ne "$(vmstat -s | grep 'used memory' | awk '{print $1}')\t" >> $OUTPUT_FILE
#         echo -ne "$(vmstat -s | grep 'free memory' | awk '{print $1}')\t" >> $OUTPUT_FILE
#         echo -ne "$(vmstat -s | grep 'buffer memory' | awk '{print $1}')\t" >> $OUTPUT_FILE
#         echo -ne "$(vmstat -s | grep 'cache' | awk '{print $1}')\t" >> $OUTPUT_FILE
#         echo -ne "$(vmstat -s | grep 'used swap' | awk '{print $1}')\t" >> $OUTPUT_FILE
#         echo -ne "$(vmstat -s | grep 'free swap' | awk '{print $1}')\t" >> $OUTPUT_FILE
#         echo "" >> $OUTPUT_FILE  # To add a new line after every iteration
#         sleep 10
#     done
# } &

# MONITOR_PID=$!

cd "/home/deva/Documents/dps/exporter"

script -f -c "bash mkall.sh" "/home/deva/logs/mkall.log"

# # Kill the RAM and SWAP usage monitoring process once your script is done.
# kill $MONITOR_PID

# open log.
# xed '/home/deva/logs/mkall.log'

rescan.sh

sleep 7

rescan.sh
