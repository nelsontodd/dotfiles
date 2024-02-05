#!/bin/bash
# Assumes macOS with Homebrew installed

# Install Neovim
brew install neovim

# Install tmux
brew install tmux

# Install tree
brew install tree

# Install Python 3 and pip3 (if not already installed)
brew install python3

# Install powerline-shell using pip3
pip3 install powerline-shell

# Install vivid
brew install vivid

# Install Nerd Fonts
# From https://github.com/ryanoasis/nerd-fonts#option-3-install-script
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLO https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/DroidSansMNerdFont-Regular.otf
