# Dotfiles
Personnal bash configuration

## Presentation
This repository will set all your bash* files in a specific folder, then create
a symbolic link to $HOME/.bashrc

## Installation
`
DOTFILES_DIR=some_dir \
DOTFILES_ENV_FILE=laptop \
bash setup.sh
`

The DOTFILES_ENV_FILE will source some environment variable file, specific to
environnement
