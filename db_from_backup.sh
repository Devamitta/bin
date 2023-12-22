#!/usr/bin/env bash

echo -e "\033[1;33m We are going to rebuild db from backup \033[0m"

cd '/home/deva/Documents/dpd-db'

poetry run bash dps/bash/rebuild_db.sh



