#!/bin/bash

rm -rf ~/.zsh-very-old
mv ~/.zsh-old ~/.zsh-very-old
mv ~/.zsh ~/.zsh-old

rm -rf ~/.zshrc-very-old
mv ~/.zshrc-old ~/.zshrc-very-old
mv ~/.zshrc ~/.zshrc-old

cp -r $(pwd)/home/.gitconfig ~
cp -r $(pwd)/home/.p10k.zsh ~
cp -r $(pwd)/home/.zsh-distrobox ~
cp -r $(pwd)/home/.vimrc ~
cp -r $(pwd)/home/.local ~
cp -r $(pwd)/home/.config ~
cp -r $(pwd)/home/.tmux.conf ~
touch ~/.local.zsh

ln ~/.zsh-distrobox/zshrc ~/.zshrc

# Install Vim Stuff
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
