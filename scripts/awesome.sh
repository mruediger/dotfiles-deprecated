#!/usr/bin/env bash

sudo_install awesome vicious i3lock rxvt-unicode

mkdir -p $HOME/.config

ln -s $WORKDIR/templates/awesome $HOME/.config/awesome

mkdir -p $HOME/bin
cp templates/toggle-touchpad $HOME/bin
