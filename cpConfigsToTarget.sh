#!/bin/bash
mkdir -p /etc/xdg
mkdir -p /etc/
mkdir -p /home/
mkdir -p /usr/share

cp -fr ./home/.wakeonlan ~
cp -fr ./etc/vimrc /etc/vimrc
cp -fr ./etc/xdg/nvim /etc/xdg/nvim/
cp -fr ./home/.zsh ~
cp -fr ./home/.zsh-server ~
cp -fr ./home/.zshrc ~
cp -fr .home/.p10k.zsh ~
cp -fr .home/.gitconfig ~
cp -fr ./usr/share/* /usr/share/
cp -fr ./etc/* /etc
