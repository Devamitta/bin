#!/usr/bin/env bash

echo -e "\033[1;33m We are going to copy SBS dictionary on the server. \033[0m"

cd "/home/deva/Documents/dps/utilities"

bash push-sbs-pd.sh

while true; do
    echo -ne "\033[1;34m push Ru Dict on the server? \033[0m"
    read yn
    case $yn in
        [Yy]* )
            echo -e "\033[1;33m Pushing Ru Dict...\033[0m"
            bash push-ru.sh
            break;;
        [Nn]* )
            break;;
        *  )
            echo -e "\033[1;31m Please enter only yes or no\033[0m";;
    esac
done


