#!/bin/bash

EXTENSIONS=$HOME/.local/share/gnome-shell/extensions

mkdir -p $EXTENSIONS

# no-topleft-hot-corner

# remove-accessibilitiy

DEST=`mktemp -d`
git clone https://github.com/zzrough/gs-extensions-drop-down-terminal $DEST
cp -r $DEST/drop-down-terminal@gs-extensions.zzrough.org $EXTENSIONS
rm -rf $DEST

gsettings set org.gnome.shell enabled-extensions "['user-theme@gnome-shell-extensions.gcampax.github.com', 'drop-down-terminal@gs-extensions.zzrough.org']"
