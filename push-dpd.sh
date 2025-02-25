#!/usr/bin/env bash

cd "/home/deva/Documents/dpd-db"

echo -e "\033[1;33m We are going to copy DPD on the server. \033[0m"


# Ask the user if they want to attempt to mount the fileserver
while true; do
    echo -ne "\033[1;34m Do you want to attempt to mount the fileserver? \033[0m"
    read mount_confirm
    case $mount_confirm in
        [Yy]* )
            # Check if the directory is not mounted
            if ! grep -qs '/home/deva/filesrv1/share1' /proc/mounts; then
                # Try to mount it. If mounting fails, exit.
                if ! mount /home/deva/filesrv1/share1; then
                    echo "Failed to mount /home/deva/filesrv1/share1. Exiting."
                    exit 1
                else
                    echo -e "\033[1;32m share1 successfully mounted \033[0m"
                fi
            else 
                echo "/home/deva/filesrv1/share1 is mounted already"    
            fi
            break;;
        * )
            break;;
    esac
done


while true; do
    echo -ne "\033[1;34m need to unpack other dicts?\033[0m"
    read yn
    case $yn in
        [Yy]* )
            echo -e "\033[1;33m Unzipping and copying everything.\033[0m"
            dps/scripts/moving/unzip_other_dicts_downloaded.py
            break;;
        * )
            break;;
    esac
done


while true; do
    echo -ne "\033[1;34m need to copy ru-dpd?\033[0m"
    read yn
    case $yn in
        [Yy]* )
            echo -e "\033[1;33m Unzipping and copying ru-dpd.\033[0m"
            dps/scripts/moving/unzip_rudpd.py
            break;;
        * )
            break;;
    esac
done


while true; do
    echo -ne "\033[1;34m Please choose which DPD to copy: '1' - downloaded or '2' - local \033[0m"
    read choice
    case $choice in
        1 )
            echo -e "\033[1;33m Processing unpack and copy of downloaded DPD...\033[0m"
            dps/scripts/moving/unzip_dpd_downloaded.py
                echo -ne "\033[1;34m Unzip locally as well?\033[0m"
                read confirmation
                if [[ $confirmation == "y" ]]; then
                    echo -e "\033[1;33m Processing copy of local DPD...\033[0m"
                    dps/scripts/moving/unzip_dpd.py
                    rescan.sh
                fi
                echo -ne "\033[1;34m Unzip deconstructor and grammar to share as well?\033[0m"
                read confirmation
                if [[ $confirmation == "y" ]]; then
                    echo -e "\033[1;33m Processing copy of deconstructor and grammar to share...\033[0m"
                    dps/scripts/moving/unzip_to_share.py
                fi
            break;;
        2 )
            echo -e "\033[1;33m Processing copy of local DPD...\033[0m"
            dps/scripts/moving/unzip_dpd_local.py

            break;;
        *  )
            echo -e "\033[1;31m Please enter only 1 or 2 \033[0m";;
    esac
done



