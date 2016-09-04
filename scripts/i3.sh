#!/bin/bash

sudo_install i3-wm
sudo_install i3lock

cp $WORKDIR/templates/i3config $HOME/.config/i3/config
cp $WORKDIR/templates/switch.py $HOME/.config/i3/switch.py
cp $WORKDIR/templates/i3status $HOME/.config/i3status/config

sudo cp $WORKDIR/templates/i3lock.service /etc/systemd/system/i3lock.service
sudo systemctl enable i3lock.service
