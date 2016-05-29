#!/usr/bin/env bash

if on_arch; then
  sudo systemctl enable sshd.service
  sudo systemctl start sshd.service
fi
