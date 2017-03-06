#!/usr/bin/bash

if [[ -f /etc/fedora-release ]]; then
    sudo dnf --assumeyes install xchat
    mkdir -p $HOME/.config/xchat2
    rsync $WORKDIR/templates/servlist_.conf $HOME/.config/xchat2/servlist_.conf
fi

if [[ -f /etc/arch-release ]]; then
    sudo pacman -S --noconfirm extra/xchat
    mkdir -p $HOME/.xchat2
    rsync $WORKDIR/templates/servlist_.conf $HOME/.xchat2/servlist_.conf
fi
