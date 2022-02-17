#!/usr/bin/env bash
echo 'hi'

mkdir $HOME/.config
git clone https://github.com/Risa-G/vim-config.git $HOME/.config/nvim

nvim "+PlugInstall" "+qa"
