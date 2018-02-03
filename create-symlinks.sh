#! /bin/bash

DOTFILES_DIR=/home/gpenaud/dotfiles
HOME_DIR=/home/gpenaud

rm $HOME_DIR/.bashrc
ln -s $DOTFILES_DIR/bash/bashrc $HOME_DIR/.bashrc
