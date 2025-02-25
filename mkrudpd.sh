#!/usr/bin/env bash

echo -e "\033[1;33m We are going to make RU DPD dictionary Started at $(date) \033[0m"

cd "/home/deva/Documents/dpd-db/"

# Start capturing all terminal output and save to a log file
script -f -c "uv run bash dps/scripts/bash/make_ru_dpd.sh" "/home/deva/logs/mkrudpd.log"

echo "------ generate RU DPD for GoldenDict Finished at $(date) ------"

rescan.sh

sleep 25

rescan.sh
