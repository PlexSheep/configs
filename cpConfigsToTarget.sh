#!/bin/bash
mkdir -p /etc/xdg
mkdir -p /home/
mkdir -p /usr/share

cp -fr ./etc/vimrc /etc/vimrc
cp -fr ./home/.* ~
cp -fr ./home/* ~
cp -fr ./usr/share/* /usr/share/
cp -fr ./etc/* /etc

ln ~/.zsh/zshrc ~/.zshrc
