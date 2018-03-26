#!/usr/bin/env bash

sudo_install xorg xorg-xinit rxvt-unicode

cp $WORKDIR/templates/Xresources $HOME/.Xresources
cp $WORKDIR/templates/xinitrc $HOME/.xinitrc
