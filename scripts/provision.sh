#!/bin/bash

which curl docker make ruby || {
  sudo apt-get update
  sudo apt-get install -y curl docker.io make ruby
  sudo usermod -a -G docker ubuntu
  sudo gem install rubyzip
}

# install terraform
which wget unzip &>/dev/null || {
  apt-get install -y wget unzip
}

which terraform &>/dev/null || {
  pushd /usr/local/bin
  sudo wget https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip
  sudo unzip terraform_0.11.10_linux_amd64.zip
  popd
}

# install git
which git &>/dev/null || {
  sudo apt-get install -y git
}
