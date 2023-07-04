#!/bin/bash
set -e

[ -f ~/.zsh-very.old ] && rm -rf ~/.zsh-very-old
[ -f ~/.zsh-old ] && mv ~/.zsh-old ~/.zsh-very-old
[ -f ~/.zsh ] && mv ~/.zsh ~/.zsh-old

[ -f ~/.zshrc-very-old ] && rm -rf ~/.zshrc-very-old
[ -f ~/.zshrc-old ] && mv ~/.zshrc-old ~/.zshrc-very-old
[ -f ~/.zshrc ] && mv ~/.zshrc ~/.zshrc-old

cp -r $(pwd)/home/.p10k-standart-fonts.zsh ~/.p10k.zsh
cp -r $(pwd)/home/.zsh ~
cp -r $(pwd)/home/.wakeonlan ~
cp -r $(pwd)/home/.vimrc ~
cp -r $(pwd)/home/.local ~
cp -r $(pwd)/home/.config ~
cp -r $(pwd)/home/.tmux.conf ~
touch ~/.local.zsh

cp $(pwd)/home/.zsh/zshrc ~/.zshrc
