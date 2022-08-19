#!/bin/bash

CUSTOM_NVIM_PATH=/usr/local/bin/nvim.appimage

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mv nvim.appimage $CUSTOM_NVIM_PATH


