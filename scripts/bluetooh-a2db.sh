#!/usr/bin/env bash

sudo_install pulseaudio-bluetooth

sudo cp $WORKDIR/templates/audio.conf /etc/bluetooth/audio.conf

#bluetoothctl power on
#bluetoothctl discoverable
#bluetoothctl trust


sudo sed -i 's/#AutoEnable=false/AutoEnable=true/' /etc/bluetooth/main.conf
