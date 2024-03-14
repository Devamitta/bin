#!/usr/bin/env bash

echo -e "\033[1;33m We will rebuild the database from the backup, incorporating the latest additions and corrections.\033[0m"

cd '/home/deva/Documents/dpd-db'

while true; do
    echo -ne "\033[1;36 Proceed?\033[0m"
    read yn
    case $yn in
        [Yy]* )
            script -f -c "poetry run bash dps/bash/rebuild_db_with_corrections_additions.sh" "/home/deva/logs/build_db.log"
            break;;
        * )
            break;;
    esac
done

rescan.sh

sleep 20

rescan.sh

