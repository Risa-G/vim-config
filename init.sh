#!/usr/bin/env bash
echo 'hi'

mkdir $HOME/.config
git clone https://github.com/Risa-G/vim-config.git $HOME/.config/nvim
cp $HOME/.config/nvim/init.vim $HOME/.vimrc

vim "+PlugInstall" "+qa"
