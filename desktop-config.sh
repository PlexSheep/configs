#!/bin/bash
cp -r $(pwd)/home/.gitconfig ~
cp -r $(pwd)/home/.p10k.zsh ~
cp -r $(pwd)/home/.zsh ~
cp -r $(pwd)/home/.wakeonlan ~
cp -r $(pwd)/home/.vimrc ~
cp -r $(pwd)/home/.local ~
cp -r $(pwd)/home/.config ~
cp -r $(pwd)/home/.tmux.conf ~

rm ~/.zsh-very-old
mv ~/.zsh-old ~/.zsh-very-old
mv ~/.zsh ~/.zsh-old

rm ~/.zshrc-very-old
mv ~/.zshrc-old ~/.zshrc-very-old
mv ~/.zshrc ~/.zshrc-old

ln ~/.zsh/zshrc ~/.zshrc

#cp -r $(pwd)/etc/* /etc
#cp -r $(pwd)/usr/* /usr
