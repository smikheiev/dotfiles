#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_grab_config "git"

cp ~/.gitignore_global $DOTFILES_CONFIGS/git/gitignore_global
cp ~/.gitconfig $DOTFILES_CONFIGS/git/gitconfig
