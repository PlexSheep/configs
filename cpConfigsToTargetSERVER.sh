#!/bin/bash
mkdir -p /etc/xdg
mkdir -p /etc/
mkdir -p /home/
mkdir -p /usr/share

cp -fr ./etc/vimrc /etc/vimrc
cp -fr ./home/.zsh-server ~
ln ~/.zsh-server/zshrc ~/.zshrc
cp -fr ./usr/share/* /usr/share/
cp -fr ./etc/* /etc
