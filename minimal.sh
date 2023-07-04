#!/bin/bash
set -e

[ -f ~/.zsh-old ] && rm -rf ~/.zsh-old
[ -f ~/.zsh ] && mv ~/.zsh ~/.zsh-old

[ -f ~/.zshrc-old ] && rm -rf ~/.zshrc-old
[ -f ~/.zshrc ] && mv ~/.zshrc ~/.zshrc-old

cp -r $(pwd)/home/.zsh-server ~
cp -r $(pwd)/home/.vimrc ~
mkdir -p ~/.config/nvim
cp -r $(pwd)/home/.config/nvim/init.vim ~/.config/nvim
cp -r $(pwd)/home/.config/nvim/common.vim ~/.config/nvim
cp -r $(pwd)/home/.tmux-server.conf ~/.tmux.conf
touch ~/.local.zsh

ln ~/.zsh-server/zshrc ~/.zshrc
