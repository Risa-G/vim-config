#!/usr/bin/env bash
echo 'hi'

mkdir $HOME/.config
git clone https://github.com/Risa-G/vim-config.git $HOME/.config/nvim
cp $HOME/.config/nvim/init.vim $HOME/.vimrc

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

nvim -c ":PlugInstall | qa"
