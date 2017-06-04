#!/usr/bin/env bash

pushd $HOME/bin
curl -sL https://releases.hashicorp.com/terraform/0.9.6/terraform_0.9.6_linux_amd64.zip | jar xv
curl -sL https://releases.hashicorp.com/packer/1.0.0/packer_1.0.0_linux_amd64.zip | jar xv
popd
