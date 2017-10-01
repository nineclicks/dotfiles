#!/usr/bin/env bash
git submodule update --init --recursive
ln -sf $PWD/.bash_aliases ~/.bash_aliases
ln -sf $PWD/.tmux.conf    ~/.tmux.conf
ln -sf $PWD/.vim          ~/.vim
ln -sf $PWD/.vimrc        ~/.vimrc
ln -sf $PWD/.xmodmap      ~/.xmodmap
