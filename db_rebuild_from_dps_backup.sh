#!/usr/bin/env bash

echo -e "\033[1;33m We are going to rebuild db from dps backup \033[0m"

cd '/home/deva/Documents/dpd-db'

script -f -c "poetry run bash dps/bash/rebuild_db_from_backup.sh" "/home/deva/logs/build_db.log"