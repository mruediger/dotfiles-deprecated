#!/usr/bin/env bash

sudo cp $WORKDIR/templates/i3lock.service /etc/systemd/system/i3lock.service
sudo systemctl enable i3lock.service
