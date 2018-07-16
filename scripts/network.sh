#!/usr/bin/env bash

if [[ `hostname` == clementine ]] ; then
    sudo pacman -S --noconfirm core/wpa_actiond
    sudo systemctl enable netctl-auto@wlp3s0
fi

if [[ `hostname` == farting-unicorn ]] ; then
    sudo pacman -S --noconfirm core/wpa_actiond
    sudo systemctl enable netctl-auto@wlp2s0
fi
