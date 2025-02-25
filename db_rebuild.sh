#!/usr/bin/env bash

echo -e "\033[1;33m We are going to rebuild or update db\033[0m"

cd '/home/deva/Documents/dpd-db'

script -f -c "uv run bash dps/scripts/bash/rebuild_db.sh" "/home/deva/logs/rebuild_db.log"

while true; do
    echo -ne "\033[1;36m rescan Goldendict?\033[0m"
    read yn
    case $yn in
        [Yy]* )
            rescan.sh
            sleep 25
            rescan.sh
            break;;
        * )
            break;;
    esac
done




