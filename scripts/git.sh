#!/bin/bash

sudo_install git

git config --global user.name "Mathias Rüdiger"
git config --global user.email "ruediger@blueboot.org"
git config --global push.default "simple"
git config --global url."git@github.com:brainly".insteadOf "https://github.com/brainly"
git config --global url."git@github.com:fromatob".insteadOf "https://github.com/fromatob"
git config --global core.editor "emacs -nw"
