#!/bin/bash

source $DOTFILES_SCRIPTS_DIR/helpers/echo.sh
source $DOTFILES_SCRIPTS_DIR/helpers/is_installed.sh

install_brew_package() {
	package=$1
	echo_check_if_installed $package

	if  ! is_brew_package_installed $package; then
		echo_install $package
		brew install $package
	else
		echo_is_installed $package
	fi
}
