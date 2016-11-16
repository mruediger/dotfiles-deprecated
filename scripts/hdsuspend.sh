#!/usr/bin/env bash

sudo_install hdparm

if [[ `hostname` == clementine ]] ; then
  sudo cp $WORKDIR/templates/hdsuspend.service /etc/systemd/system/hdsuspend.service
  sudo systemctl enable hdsuspend.service
fi
