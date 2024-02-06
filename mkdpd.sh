#!/usr/bin/env bash

echo -e "\033[1;33m We are going to make DPD dictionary Started at $(date) \033[0m"


# OUTPUT_FILE="/home/deva/logs/ram_swap_usage_mkdpd.tsv"

# echo -e "We are going to monitor usage of RAM in the background, see log folder"

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

cd "/home/deva/Documents/dpd-db/"

# Start capturing all terminal output and save to a log file
script -f -c "poetry run bash dps/bash/make_dpd.sh" "/home/deva/logs/mkdpd.log"

echo "------ generate DPD for GoldenDict Finished at $(date) ------"

# # Kill the RAM usage monitoring process once your script is done.
# kill $MONITOR_PID

# open log
# xed '/home/deva/logs/mkdpd.log'

# Check if GoldenDict is running
if pgrep -x "goldendict" > /dev/null
then
    # If it is running, kill it
    killall goldendict
    # Give some time for the process to be killed completely
    sleep 1
fi

# Start GoldenDict
goldendict >/dev/null 2>&1 &

sleep 20

# Check if GoldenDict is running
if pgrep -x "goldendict" > /dev/null
then
    # If it is running, kill it
    killall goldendict
    # Give some time for the process to be killed completely
    sleep 1
fi

# Start GoldenDict
goldendict >/dev/null 2>&1 &
