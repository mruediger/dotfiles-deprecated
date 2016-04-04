#!/bin/bash

WORKDIR=`git rev-parse --show-toplevel`

mkdir -p $HOME/downloads
mkdir -p $HOME/doc/templates
mkdir -p $HOME/public
mkdir -p $HOME/media/music
mkdir -p $HOME/media/pictures
mkdir -p $HOME/media/videos
mkdir -p $HOME/tmp
rmdir $HOME/Music
rmdir $HOME/Templates
rmdir $HOME/Desktop
rmdir $HOME/Documents
rmdir $HOME/Downloads
rmdir $HOME/Pictures
rmdir $HOME/Public
rmdir $HOME/Videos

cp $WORKDIR/templates/user-dirs.dirs $HOME/.config/user-dirs.dirs
