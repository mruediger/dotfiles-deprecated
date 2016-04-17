#!/bin/bash

if on_arch; then
    sudo pacman -S --noconfirm core/mlocate
    sudo systemctl enable updatedb.service
    sudo systemctl enable updatedb.timer
fi
