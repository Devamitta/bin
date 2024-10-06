#!/usr/bin/env bash

echo -e "\033[1;33m We are going to rebuild or update db\033[0m"

cd '/home/deva/Documents/dpd-db'

script -f -c "poetry run bash dps/bash/rebuild_db.sh" "/home/deva/logs/build_db.log"

while true; do
    echo -ne "\033[1;36m rescan Goldendict?\033[0m"
    read yn
    case $yn in
        [Yy]* )
            rescan.sh
            sleep 7
            rescan.sh
            break;;
        * )
            break;;
    esac
done




