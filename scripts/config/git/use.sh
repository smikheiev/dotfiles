#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_use_config "git"

cp $DOTFILES_CONFIGS/git/gitignore_global ~/.gitignore_global
cp $DOTFILES_CONFIGS/git/gitconfig ~/.gitconfig

if [ ! -f ~/.gituser ]; then
	$DOTFILES_SCRIPTS/config/git/generate_user_config.sh
fi
