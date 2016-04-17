#!/bin/bash

cp $WORKDIR/templates/bashrc $HOME/.bashrc
cp $WORKDIR/templates/bash_alias $HOME/.bash_alias

on_arch && sudo_install extra/bash-completion
