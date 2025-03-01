#!/usr/bin/env bash

# sudo nano /etc/fstab
# # add:
# # mounting share1 and share2
#! //filesrv1/share1 /home/deva/filesrv1/share1 cifs credentials=/etc/credentials,iocharset=utf8,sec=ntlmssp,user,uid=1000,gid=1000 0 0
#! //filesrv1/share2 /home/deva/filesrv1/share2 cifs credentials=/etc/credentials,iocharset=utf8,sec=ntlmssp,user,uid=1000,gid=1000 0 0
# 
# also make sure that /etc/credentials is the file which has usr and psrd for the fileserver in the format:
# username=<username>
# password=<password>

echo -e "\033[1;33m Checking SBS server mounted or not.. \033[0m"

if mountpoint -q /home/deva/filesrv1/share1; then
    echo -e "\033[1;32m share1 is already mounted. \033[0m"
else
    echo -e "\033[1;33m..mounting share1..\033[0m"
    if mount /home/deva/filesrv1/share1; then
        echo -e "\033[1;32m share1 mounted successfully. \033[0m"
    else
        echo -e "\033[1;31m Failed to mount /home/deva/filesrv1/share1. Exiting. \033[0m"
        exit 1
    fi
fi

if mountpoint -q /home/deva/filesrv1/share2; then
    echo -e "\033[1;32m share2 is already mounted. \033[0m"
else
    echo -e "\033[1;33m..mounting share1..\033[0m"
    if mount /home/deva/filesrv1/share2; then
        echo -e "\033[1;32m share2 mounted successfully. \033[0m"
    else
        echo -e "\033[1;31m Failed to mount /home/deva/filesrv1/share2. Exiting. \033[0m"
        exit 1
    fi
fi


