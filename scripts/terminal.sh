#!/bin/bash

sudo_install rxvt-unicode

cat <<EOF > ~/.Xresources
Xft.dpi: 180
!Xft.autohint: 0
!Xft.lcdfilter:  lcddefault
!Xft.hintstyle:  hintfull
!Xft.hinting: 1
!Xft.antialias: 1
!Xft.rgba: rgb


!urxvt.font:  xft:PragmataPro:size=10
urxvt.font: xft:SpaceMono:size=10
!urxvt.font: xft:AnonymousPro:size=12

urxvt.scrollBar: false
urxvt.termName: rxvt

URxvt.keysym.Control-Up:   \033[1;5A
URxvt.keysym.Control-Down:    \033[1;5B
URxvt.keysym.Control-Left:    \033[1;5D
URxvt.keysym.Control-Right:    \033[1;5C

URxvt.background: #fdf6e3
URxvt.foreground: #657b83

XTerm*.allowBoldFonts : true
XTerm*.bellIsUrgent   : true
XTerm*.cutNewline     : true
XTerm*.faceName       : PragmataPro
XTerm*.faceSize       : 10
XTerm*.fullscreen     : never
XTerm*.internalBorder : 0
XTerm*.renderFont     : true
XTerm*.termName       : xterm-256color
XTerm*.utf8           : always
XTerm*.utf8Fonts      : always
XTerm*.visualBell     : false
XTerm*.visualBellLine : false
EOF
