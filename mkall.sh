#!/usr/bin/env bash

echo -e "\033[1;33m We are going to make DPS and SBS dictionaries \033[0m"

cd "/home/deva/Documents/dps/exporter"

script -f -c "bash mkall.sh" "/home/deva/logs/mkall.log"

rescan.sh

sleep 7

rescan.sh
