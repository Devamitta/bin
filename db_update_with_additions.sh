#!/bin/bash

echo -e "\033[1;33m We will update the database from the backup, incorporating the latest additions and corrections.\033[0m"

cd '/home/deva/Documents/dpd-db'

script -f -c "poetry run bash dps/bash/update_db_with_corrections_additions.sh" "/home/deva/logs/build_db.log"

rescan.sh

sleep 20

rescan.sh
