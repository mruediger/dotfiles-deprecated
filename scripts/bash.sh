#!/bin/bash

ln -s $WORKDIR/templates/bashrc $HOME/.bashrc
ln -s $WORKDIR/templates/bash.d $HOME/.bash.d

on_arch && sudo_install extra/bash-completion
