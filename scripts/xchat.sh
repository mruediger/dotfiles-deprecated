#!/usr/bin/bash

sudo dnf install xchat
rsync $WORKDIR/templates/servlist_.conf $HOME/.config/xchat2/servlist_.conf
