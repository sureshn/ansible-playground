#!/bin/sh

sudo apt-get -y update
sudo apt-get -y install software-properties-common tmux vim
sudo add-apt-repository -y ppa:ansible/ansible
sudo apt-get -y update
