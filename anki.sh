#!/usr/bin/env bash

echo -e "\033[1;33m We are going to update Anki from db \033[0m"

cd '/home/deva/Documents/dpd-db'

read -p "Do you want to update test field? (y) or without that field (enter): " answer

if [[ "$answer" == "y" ]]; then
    poetry run python dps/scripts/dps_anki_updater.py test
elif [[ -z "$answer" ]]; then
    poetry run python dps/scripts/dps_anki_updater.py
else
    echo "Invalid input. Please enter 'y' for yes or just press Enter for no."
fi
