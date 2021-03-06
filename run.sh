#!/bin/sh

set -xe
cp -fv .vimrc ~
cp -fv .tmux.conf ~
cp -fv .bashrc ~
cp -fv .gitconfig ~

echo "config vimrc"
rm -rf ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qa

echo "ok~"
