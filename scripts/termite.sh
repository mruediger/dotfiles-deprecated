#!/usr/bin/env bash

sudo_install termite

mkdir -p $HOME/.config/termite
cp $WORKDIR/templates/termite $HOME/.config/termite/config
