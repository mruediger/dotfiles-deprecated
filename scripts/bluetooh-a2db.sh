#!/usr/bin/env bash

sudo_install pulseaudio-bluetooth

sudo cp templates/audio.conf /etc/bluetooth/audio.conf

#bluetoothctl power on
#bluetoothctl discoverable
#bluetoothctl trust
