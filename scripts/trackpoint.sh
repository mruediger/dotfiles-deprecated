#!/usr/bin/env bash

if [[ `hostname` == farting-unicorn ]] ; then
  sudo cp $WORKDIR/templates/10-trackpoint.rules /etc/udev/rules.d/10-trackpoint.rules
  sudo cp $WORKDIR/templates/trackpoint.service /etc/systemd/system/trackpoint.service
  sudo systemctl enable trackpoint.service
fi
