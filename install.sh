#!/usr/bin/env bash
git submodule update --init --recursive
ln -sfn $PWD/bash_aliases ~/.bash_aliases
ln -sfn $PWD/tmux.conf    ~/.tmux.conf
ln -sfn $PWD/vim          ~/.vim
ln -sfn $PWD/vimrc        ~/.vimrc
ln -sfn $PWD/xmodmap      ~/.xmodmap

if [ "$(uname)" == "Darwin" ]; then
  # if Mac
  ln -sfn $PWD/karabiner  ~/.config/karabiner
fi
