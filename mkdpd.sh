#!/usr/bin/env bash

echo -e "\033[1;33m We are going to make DPD dictionary Started at $(date) \033[0m"

cd "/home/deva/Documents/dpd-db/"

# Start capturing all terminal output and save to a log file
script -f -c "poetry run bash dps/bash/make_dpd.sh" "/home/deva/logs/mkdpd.log"

echo "------ generate DPD for GoldenDict Finished at $(date) ------"

rescan.sh

sleep 20

rescan.sh
