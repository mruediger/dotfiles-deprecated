#!/usr/bin/env bash

sudo mkdir -p /usr/share/kbd/keymaps/i386/neo
sudo curl -L https://svn.neo-layout.org/linux/console/neo.map -o /usr/share/kbd/keymaps/i386/neo/neo.map

sudo localectl --no-convert set-keymap neo
sudo localectl --no-convert set-x11-keymap neo

sudo cp $WORKDIR/templates/00-keyboard.conf /etc/X11/xorg.conf.d/00-keyboard.conf
