#! /bin/bash

export DOTFILES_DIR=${DOTFILES_DIR:-$HOME/dotfiles}
export DOTFILES_ENV=${DOTFILES_DIR}/environment/${DOTFILES_ENV_FILE}

rm ${HOME}/.bashrc
ln -s ${DOTFILES_DIR}/bash/bashrc ${HOME}/.bashrc

# set env file content
cat << EOF > ${DOTFILES_DIR}/bash/env_loader
#!/usr/bin/env bash
export DOTFILES_PATH=${DOTFILES_DIR}
export DOTFILES_ENV=${DOTFILES_ENV}

if [ -f "${DOTFILES_ENV}" ]; then
  source ${DOTFILES_ENV}
else
  echo "${DOTFILES_ENV} doest not exists"
  exit 1
fi
EOF
