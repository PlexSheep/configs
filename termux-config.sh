#!/bin/bash

rm -rf ~/.zsh-very-old
mv ~/.zsh-old ~/.zsh-very-old
mv ~/.zsh ~/.zsh-old

rm -rf ~/.zshrc-very-old
mv ~/.zshrc-old ~/.zshrc-very-old
mv ~/.zshrc ~/.zshrc-old

cp -r $(pwd)/home/.p10k.zsh ~
cp -r $(pwd)/home/.zsh ~
cp -r $(pwd)/home/.wakeonlan ~
cp -r $(pwd)/home/.vimrc ~
cp -r $(pwd)/home/.local ~
cp -r $(pwd)/home/.config ~
cp -r $(pwd)/home/.tmux.conf ~
touch ~/.local.zsh

cp $(pwd)/home/.zsh/zshrc ~/.zshrc
