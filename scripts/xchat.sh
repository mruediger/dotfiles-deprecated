#!/usr/bin/bash

sudo dnf --assumeyes install xchat

mkdir -p $HOME/.config/xchat2/servlist_.conf

rsync $WORKDIR/templates/servlist_.conf $HOME/.config/xchat2/servlist_.conf
