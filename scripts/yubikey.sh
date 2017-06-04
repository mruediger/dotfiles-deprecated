#!/usr/bin/env bash

echo 'ACTION=="add", SUBSYSTEM=="usb", ENV{ID_VENDOR_ID}=="1050", ENV{ID_MODEL_ID}=="0116|0111", MODE="660", GROUP="wheel"' | sudo tee /etc/udev/rules.d/99-yubikey.rules

on_arch && sudo pacman -S --noconfirm --needed pcsc-tools ccid libusb-compat
sudo pacman -S --noconfirm --needed pcsc-tools ccid libusb-compat
