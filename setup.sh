#!/bin/env zsh

sudo pacman -S --needed zsh zsh-autosuggestions zsh-syntax-highlighting

if [ -n $(sudo pacman -Qs yay | grep "local" | grep "oh-my-posh" >> /dev/null) ]
then
    wget https://aur.archlinux.org/cgit/aur.git/snapshot/oh-my-posh-bin.tar.gz
    tar -xf oh-my-posh-bin.tar.gz
    cd oh-my-posh-bin
    makepkg -sri
    cd ..
    rm -r oh-my-posh-bin*
fi

cp -t ~ .vimrc .zshrc

exit