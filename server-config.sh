#!/bin/bash

rm ~/.zsh-very-old
mv ~/.zsh-old ~/.zsh-very-old
mv ~/.zsh ~/.zsh-old

rm ~/.zshrc-very-old
mv ~/.zshrc-old ~/.zshrc-very-old
mv ~/.zshrc ~/.zshrc-old

cp -r $(pwd)/home/.zsh-server ~
cp -r $(pwd)/home/.vimrc ~
cp -r $(pwd)/home/.local ~
cp -r $(pwd)/home/.config ~
cp -r $(pwd)/home/.tmux.conf ~

ln ~/.zsh-server/zshrc ~/.zshrc

# Install Vim Stuff
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo bash -c 'rm ~/.zsh-very-old'
sudo bash -c 'mv ~/.zsh-old ~/.zsh-very-old'
sudo bash -c 'mv ~/.zsh ~/.zsh-old'

sudo bash -c 'rm ~/.zshrc-very-old'
sudo bash -c 'mv ~/.zshrc-old ~/.zshrc-very-old'
sudo bash -c 'mv ~/.zshrc ~/.zshrc-old'

sudo bash -c 'cp -r $(pwd)/home/.zsh-server ~'
sudo bash -c 'cp -r $(pwd)/home/.vimrc ~'
sudo bash -c 'cp -r $(pwd)/home/.local ~'
sudo bash -c 'cp -r $(pwd)/home/.config ~'
sudo bash -c 'cp -r $(pwd)/home/.tmux.conf ~'

sudo bash -c 'ln ~/.zsh-server/zshrc ~/.zshrc'

# Install Vim Stuff
sudo sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
