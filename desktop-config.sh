#!/bin/bash
cp -r $(pwd)/home/.gitconfig ~
cp -r $(pwd)/home/.p10k.zsh ~
cp -r $(pwd)/home/.zsh ~
cp -r $(pwd)/home/.wakeonlan ~
cp -r $(pwd)/home/.vimrc ~

rm ~/.zshrc-very-old
mv ~/.zshrc-old ~/.zshrc-very-old
mv ~/.zshrc ~/.zshrc-old
ln ~/.zsh/zshrc ~/.zshrc

cp -r $(pwd)/etc/* /etc
cp -r $(pwd)/usr/* /usr
