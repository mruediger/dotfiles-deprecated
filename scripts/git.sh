#!/bin/bash

sudo_install git

git config --global user.name "Mathias Rüdiger"
git config --global user.email "ruediger@blueboot.org"
git config --global push.default "simple"
git config --global url."git@github.com:brainly".insteadOf "https://github.com/brainly"
git config --global url."git@github.com:fromatob".insteadOf "https://github.com/fromatob"
git config --global core.editor "emacs -nw"

mkdir -p $HOME/bin

pushd $HOME/bin
curl -sL https://github.com/git-lfs/git-lfs/releases/download/v2.1.1/git-lfs-linux-amd64-2.1.1.tar.gz | tar xz git-lfs-2.1.1/git-lfs --strip 1
popd
