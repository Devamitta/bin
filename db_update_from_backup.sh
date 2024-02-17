#!/usr/bin/env bash

echo -e "\033[1;33m We are going to update db from backup \033[0m"

cd '/home/deva/Documents/dpd-db'

while true; do
    echo -ne "\033[1;36 Proceed?\033[0m"
    read yn
    case $yn in
        [Yy]* )
            poetry run python scripts/db_update_from_tsv.py
            break;;
        * )
            break;;
    esac
done
