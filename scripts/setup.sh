#!/bin/bash

# This script installs everything needed on new system

# export vars for current shell so it'll be available from other scripts
export DOTFILES_DIR=$HOME/dotfiles
export DOTFILES_SCRIPTS_DIR=$DOTFILES_DIR/scripts

# source all files in 'install' dir
for file in $DOTFILES_SCRIPTS_DIR/install/*; do
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
