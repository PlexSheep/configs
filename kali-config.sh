#!/bin/bash
set -e

[ -f ~/.zsh-very.old ] && rm -rf ~/.zsh-very-old
[ -f ~/.zsh-old ] && mv ~/.zsh-old ~/.zsh-very-old
[ -f ~/.zsh ] && mv ~/.zsh ~/.zsh-old

cp -r $(pwd)/home/.zsh-kali ~
cp -r $(pwd)/home/.vimrc ~
cp -r $(pwd)/home/.local ~
cp -r $(pwd)/home/.config ~
cp -r $(pwd)/home/.tmux-server.conf ~/.tmux.conf
touch ~/.local.zsh

last_line=$(tail -n 1 ~/.zshrc)

if [ $last_line != "source ~/.zsh-kali/zshrc" ]; then
    echo "source ~/.zsh-kali/zshrc" >> ~/.zshrc
fi
