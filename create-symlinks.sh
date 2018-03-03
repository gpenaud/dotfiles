#! /bin/bash

export DOTFILES_DIR=${DOTFILES_DIR:-$HOME}/dotfiles

rm $HOME/.bashrc
ln -s $DOTFILES_DIR/bash/bashrc $HOME/.bashrc

sed -i "s@__DOTFILES_DIR___@$DOTFILES_DIR@" $DOTFILES_DIR/bash/bashrc