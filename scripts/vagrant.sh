#!/bin/bash

[[ -f /etc/arch-release ]] && sudo pacman -S --noconfirm vagrant virtualbox linux-headers
