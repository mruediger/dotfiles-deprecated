#!/bin/bash

mkdir -p $HOME/downloads
mkdir -p $HOME/doc/templates
mkdir -p $HOME/public
mkdir -p $HOME/media/music
mkdir -p $HOME/media/pictures
mkdir -p $HOME/media/videos
mkdir -p $HOME/tmp
rmdir --ignore-fail-on-non-empty $HOME/Music
rmdir --ignore-fail-on-non-empty $HOME/Templates
rmdir --ignore-fail-on-non-empty $HOME/Desktop
rmdir --ignore-fail-on-non-empty $HOME/Documents
rmdir --ignore-fail-on-non-empty $HOME/Downloads
rmdir --ignore-fail-on-non-empty $HOME/Pictures
rmdir --ignore-fail-on-non-empty $HOME/Public
rmdir --ignore-fail-on-non-empty $HOME/Videos

cp $WORKDIR/templates/user-dirs.dirs $HOME/.config/user-dirs.dirs

