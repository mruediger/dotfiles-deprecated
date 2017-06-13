#!/usr/bin/env bash

sudo_install cups

git clone https://aur.archlinux.org/samsung-printers.git ~/src/aur/samsung-printers

sudo lpadmin -p Samsung_M2020 -E -v "socket://192.168.178.26" -m Samsung_M2020_Series.ppd
sudo lpoptions -d Samsung_M2020
