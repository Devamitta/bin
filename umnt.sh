#!/usr/bin/env bash

echo -e "\033[1;33m Unmounting shares.. \033[0m"

if mountpoint -q /home/deva/filesrv1/share1; then
    echo -e "\033[1;33m..unmounting share1..\033[0m"
    if umount /home/deva/filesrv1/share1; then
        echo -e "\033[1;32m share1 unmounted successfully. \033[0m"
    else
        echo -e "\033[1;31m Failed to unmount /home/deva/filesrv1/share1. Exiting. \033[0m"
        exit 1
    fi
else
    echo -e "\033[1;32m share1 is not mounted. \033[0m"
fi

if mountpoint -q /home/deva/filesrv1/share2; then
    echo -e "\033[1;33m..unmounting share2..\033[0m"
    if umount /home/deva/filesrv1/share2; then
        echo -e "\033[1;32m share2 unmounted successfully. \033[0m"
    else
        echo -e "\033[1;31m Failed to unmount /home/deva/filesrv1/share2. Exiting. \033[0m"
        exit 1
    fi
else
    echo -e "\033[1;32m share2 is not mounted. \033[0m"
fi