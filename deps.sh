#!/bin/bash
#Assumes Ubuntu
sudo apt update
sudo apt-get install neovim
sudo apt-get install tmux
sudo apt-get install tree
sudo apt-get install nodejs npm
sudo apt-get install python3-pip
sudo apt-get install cmake
sudo apt-get install python3-virtualenv
pip3 install powerline-shell
pip3 install pynvim
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
wget "https://github.com/sharkdp/vivid/releases/download/v0.8.0/vivid_0.8.0_amd64.deb"
sudo dpkg -i vivid_0.8.0_amd64.deb
#From https://github.com/ryanoasis/nerd-fonts#option-3-install-script
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf

#Need ubuntu
sudo add-apt-repository ppa:neovim-ppa/stable
#Import unstable version of NeoVim PPA
$ sudo add-apt-repository ppa:neovim-ppa/unstable -y #The stable version is still v.7 for some reason - its breaking rose-pine
sudo apt-get update
sudo apt-get install neovim
sudo apt install ripgrep
sudo apt install fd-find
sudo apt install shellcheck
pip3 install black
sudo npm install -g neovim
wget https://github.com/patrickvane/shfmt/releases/download/master/shfmt_linux_amd64 #ALE shell Linter
cp shfmt_linux_amd64 ~/.local/bin/shfmt 
#After installing nvim deps, need to cd into ~/.nvim/plugged/YouCompleteMe and run python3 install.py --all
