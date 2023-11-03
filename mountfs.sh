#!/usr/bin/env bash

sudo -E mount -t cifs //filesrv1/share1 ~/filesrv1/share1 -o user=devamitta,password="amitta",noauto,user,uid=$(id -u),gid=$(id -g) && sudo mount -t cifs //filesrv1/share2 ~/filesrv1/share2 -o nobrl,user=devamitta,password="amitta",noauto,user,uid=$(id -u),gid=$(id -g)
