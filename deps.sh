#!/bin/bash
#Assumes Ubuntu

sudo apt-get install neovim
sudo apt-get install tmux
sudo apt-get install python3-pip
pip3 install powerline-shell
wget "https://github.com/sharkdp/vivid/releases/download/v0.8.0/vivid_0.8.0_amd64.deb"
sudo dpkg -i vivid_0.8.0_amd64.deb
