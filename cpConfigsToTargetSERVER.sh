#!/bin/bash
mkdir -p /etc/xdg
mkdir -p /home/
mkdir -p /usr/share

cp -fr ./etc/* /etc/
cp -fr ./home/.zsh-server ~
cp -fr ./usr/share/* /usr/share/
cp -fr ./etc/* /etc

ln ~/.zsh-server/zshrc ~/.zshrc
