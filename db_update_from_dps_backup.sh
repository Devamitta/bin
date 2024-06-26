#!/usr/bin/env bash

echo -e "\033[1;33m We are going to update db from dps backup \033[0m"

cd '/home/deva/Documents/dpd-db'

while true; do
    echo -ne "\033[1;36 Proceed?\033[0m"
    read yn
    case $yn in
        [Yy]* )
            script -f -c "poetry run bash dps/bash/update_db_from_backup.sh" "/home/deva/logs/build_db.log"
            break;;
        * )
            break;;
    esac
done

