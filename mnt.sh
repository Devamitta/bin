#!/usr/bin/env bash
# require credentials_filesrv1 in .local/bin

echo -e "\033[1;33m Mounting SBS file server \033[0m"

# Read credentials from the credentials file
source credentials_filesrv1

# Mount share1
echo -e "\033[1;33m..mounting share1..\033[0m"
sudo -E mount -t cifs //filesrv1/share1 ~/filesrv1/share1 -o user=$USERNAME,password=$PASSWORD,noauto,user,uid=$(id -u),gid=$(id -g)
echo -e "\033[1;32mshare1 mounted successfully.\033[0m"

# Mount share2
echo -e "\033[1;33m..mounting share2..\033[0m"
sudo -E mount -t cifs //filesrv1/share2 ~/filesrv1/share2 -o nobrl,user=$USERNAME,password=$PASSWORD,noauto,user,uid=$(id -u),gid=$(id -g)
echo -e "\033[1;32mshare2 mounted successfully.\033[0m"