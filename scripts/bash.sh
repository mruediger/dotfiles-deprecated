#!/bin/bash

cp $WORKDIR/templates/bashrc $HOME/.bashrc
cp $WORKDIR/templates/bash.d $HOME/.bash.d

on_arch && sudo_install extra/bash-completion
