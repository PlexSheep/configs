#!/bin/bash

mkdir -p /tmp/nvim-install-appimage
cd /tmp/nvim-install-appimage
wget 'https://github.com/neovim/neovim/releases/download/stable/nvim.appimage'
chmod +x nvim.appimage
cp nvim.appimage /usr/local/bin

# install alternatives
CUSTOM_NVIM_PATH=/usr/local/bin/nvim.appimage
#update-alternatives --remove ex "${CUSTOM_NVIM_PATH}"
#update-alternatives --remove vi "${CUSTOM_NVIM_PATH}"
#update-alternatives --remove view "${CUSTOM_NVIM_PATH}"
#update-alternatives --remove vim "${CUSTOM_NVIM_PATH}"
#update-alternatives --remove vimdiff "${CUSTOM_NVIM_PATH}"
update-alternatives --install /usr/bin/nvim nvim "${CUSTOM_NVIM_PATH}" 110

# get plug.vim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
