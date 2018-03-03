# Dotfiles
Personnal bash configuration

## Presentation
This repository will set all your bash* files in a specific folder, then create
a symbolic link to $HOME/.bashrc

## Installation
`
DOTFILES_DIR=some_dir \
DOTFILES_ENV=laptop \
bash setup.sh
`

The DOTFILES_ENV will source some environment variable file, specific to
environnement