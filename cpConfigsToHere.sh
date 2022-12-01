#!/bin/bash
mkdir -p etc/xdg
mkdir -p etc/
mkdir -p home/

cp -fr ~/.wakeonlan ./home
cp -fr /etc/vimrc ./etc/vimrc
cp -fr /etc/xdg/nvim ./etc/xdg/nvim/
cp -fr ~/.zsh ./home/
cp -fr ~/.zshrc ./home/
cp -fr ~/.p10k.zsh ./home
cp -fr ~/.gitconfig ./home
