#! /bin/bash
#This is a list of aliases I'll be using from now on.
alias vim="nvim"
alias pdfopen="pdfopen --viewer evince"
alias authie="oathtool --totp -b 7R7VLKGQ3NUL2Z4B"
alias light="lifx power on && lifx power on"
alias dim="nohup lifx dim > lights.out 2>error.out &"
alias nolight="lifx power off && lifx power off"
alias wifi=wicd-gtk
alias myscrot='scrot -s ~/Pictures/Screenshots/%b%d::%H%M%S.png'
alias ll="ls -l"
