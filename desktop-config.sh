#!/bin/bash
cp -r $(pwd)/home/.gitconfig ~
cp -r $(pwd)/home/.p10k.zsh ~
cp -r $(pwd)/home/.zsh ~
cp -r $(pwd)/home/.wakeonlan ~

ln ~/.zsh/zshrc ~/.zshrc

cp -r $(pwd)/etc/* /etc
cp -r $(pwd)/usr/* /usr
