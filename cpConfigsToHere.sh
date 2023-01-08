#!/bin/bash
mkdir -p etc/xdg
mkdir -p etc/
mkdir -p home/
mkdir -p usr/share

cp -fr ~/.wakeonlan ./home
cp -fr /etc/vimrc ./etc/vimrc
cp -fr /etc/tmux.conf ./etc/tmux.conf
cp -fr /etc/xdg/nvim ./etc/xdg/nvim/
cp -fr ~/.zsh ./home/
cp -fr ~/.zshrc ./home/
cp -fr ~/.p10k.zsh ./home
cp -fr ~/.gitconfig ./home
#cp -fr /usr/share/fzf ./usr/share/fzf
