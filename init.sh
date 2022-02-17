#!/usr/bin/env bash
echo 'hi'

mkdir $HOME/.config
git clone https://github.com/Risa-G/vim-config.git $HOME/.config/nvim
cp $HOME/.config/nvim/init.vim $HOME/.vimrc

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim "+PlugInstall" "+qa"
