#!/bin/bash

source $DOTFILES_SCRIPTS_DIR/helpers/dir.sh
source $DOTFILES_SCRIPTS_DIR/helpers/echo.sh
source $DOTFILES_SCRIPTS_DIR/helpers/is_installed.sh

NVM="nvm"
NVM_DIR=~/.nvm

install_nvm() {
	echo_check_if_installed "$NVM"

	if ! is_existing_dir "$NVM_DIR"; then
		echo_install "$NVM"
		curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
	else
		echo_is_installed "$NVM"
	fi
}
