#!/bin/bash
cp -r $(pwd)/home/.zsh-server ~
cp -r $(pwd)/home/.vimrc ~

rm ~/.zshrc-very-old
mv ~/.zshrc-old ~/.zshrc-very-old
mv ~/.zshrc ~/.zshrc-old
ln ~/.zsh-server/zshrc ~/.zshrc

cp -r $(pwd)/etc/* /etc
cp -r $(pwd)/usr/* /usr
