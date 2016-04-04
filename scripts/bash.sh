#!/bin/bash

WORKDIR=`git rev-parse --show-toplevel`

cp $WORKDIR/templates/bashrc $HOME/.bashrc
cp $WORKDIR/templates/bash_alias $HOME/.bash_alias

[[ -f /etc/arch-release]] && sudo pacman -S --noconfirm extra/bash-completion
