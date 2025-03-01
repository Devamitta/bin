#!/usr/bin/env bash
# require credentials_filesrv1 in .local/bin in the format:
# USERNAME=usr
# PASSWORD="pswd"

source credentials_filesrv1

if mountpoint -q /home/deva/filesrv1/share1; then
    echo -e "\033[1;32m share1 is already mounted. \033[0m"
else
    echo -e "\033[1;33m..mounting share1..\033[0m"
    if sudo -E mount -t cifs //filesrv1/share1 ~/filesrv1/share1 -o user=$USERNAME,password=$PASSWORD,noauto,user,uid=$(id -u),gid=$(id -g); then
        echo -e "\033[1;32m share1 mounted successfully. \033[0m"
    else
        echo -e "\033[1;31m Failed to mount /home/deva/filesrv1/share1. Exiting. \033[0m"
        exit 1
    fi
fi


if mountpoint -q /home/deva/filesrv1/share2; then
    echo -e "\033[1;32m share2 is already mounted. \033[0m"
else
    echo -e "\033[1;33m..mounting share2..\033[0m"
    if sudo -E mount -t cifs //filesrv1/share2 ~/filesrv1/share2 -o user=$USERNAME,password=$PASSWORD,noauto,user,uid=$(id -u),gid=$(id -g); then
        echo -e "\033[1;32m share2 mounted successfully. \033[0m"
    else
        echo -e "\033[1;31m Failed to mount /home/deva/filesrv1/share2. Exiting. \033[0m"
        exit 1
    fi
fi


