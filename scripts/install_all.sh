#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_sm "Install all"

# source all files in 'install' dir
for file in $DOTFILES_SCRIPTS/install/*; do
	source $file
done

# install all needed tools and programs; order is important
install_brew
install_brew_package git
install_oh_my_zsh
install_nvm
install_brew_cask_package iterm2
install_brew_cask_package visual-studio-code
install_brew_cask_package spectacle
