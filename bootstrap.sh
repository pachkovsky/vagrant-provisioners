#!/bin/bash
set -e

rvm_installed() {
	rvm -v
}

apt-get update
apt-get install -y curl build-essential


curl -L https://get.rvm.io | bash -s stable
echo 'source ~/.bash_profile' >> ~/.bashrc
source ~/.bash_profile
rvm install 1.9.3 --default
rvm use 1.9.3
gem install chef --version='~>11.4.0' --no-rdoc --no-ri
