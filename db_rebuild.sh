#!/usr/bin/env bash

echo -e "\033[1;33m We are going to rebuild db from backup and make_dpd \033[0m"

cd '/home/deva/Documents/dpd-db'

while true; do
    echo -ne "\033[1;36 Proceed?\033[0m"
    read yn
    case $yn in
        [Yy]* )
            script -f -c "poetry run bash bash/build_db.sh" "/home/deva/logs/build_db.log"
            poetry run python dps/scripts/add_combined_view.py
            script -f -c "poetry run python exporter/exporter.py" "/home/deva/logs/mkdpd.log"
            break;;
        * )
            break;;
    esac
done

rescan.sh

sleep 20

rescan.sh


