#!/usr/bin/env bash

## Install VimPlug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim -E -s +VimEnter +PlugInstall +qall

## Enable Python3 interface with pip (requirement for deoplete)
pip3 install --user pynvim

# git clone --recursive https://github.com/davidhalter/jedi-vim.git ~/.config/nvim/