#!/usr/bin/env

echo 'ACTION=="add", SUBSYSTEM=="usb", ENV{ID_VENDOR_ID}=="1050", ENV{ID_MODEL_ID}=="0116|0111", MODE="660", GROUP="wheel"' | sudo tee /etc/udev/rules.d/99-yubikey.rules
