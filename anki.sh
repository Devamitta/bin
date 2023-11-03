#!/usr/bin/env bash

echo -e "\033[1;33m We are going to make csv for anki \033[0m"

cd '/home/deva/Documents/dpd-db'

poetry run bash dps/bash/update_csvs.sh
