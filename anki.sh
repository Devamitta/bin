#!/usr/bin/env bash

echo -e "\033[1;33m We are going to make CSVs for anki \033[0m"

cd '/home/deva/Documents/dpd-db'

poetry run python dps/scripts/dps_csv.py
poetry run python dps/scripts/anki_csvs.py

