#!/usr/bin/env bash

echo -e "\033[1;33m Checking SBS server mounted or not.. \033[0m"

if mount | grep -q "/home/deva/filesrv1/share1"; then
    echo -e "\033[1;33m..unmounting share1..\033[0m"
    umount /home/deva/filesrv1/share1
    echo -e "\033[1;32mshare1 unmounted successfully.\033[0m"
else
    echo -e "\033[1;33mshare1 is not mounted.\033[0m"
fi

if mount | grep -q "/home/deva/filesrv1/share2"; then
    umount /home/deva/filesrv1/share2
    echo -e "\033[1;33m..unmounting share2..\033[0m"
    echo -e "\033[1;32mshare2 unmounted successfully.\033[0m"
else
    echo -e "\033[1;33mshare2 is not mounted.\033[0m"
fi

