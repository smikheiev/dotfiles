#!/bin/bash

source $DOTFILES_SCRIPTS_DIR/helpers/echo.sh
source $DOTFILES_SCRIPTS_DIR/helpers/is_installed.sh

BREW="brew"

install_brew() {
	echo_check_if_installed "$BREW"

	if ! is_tool_installed "$BREW"; then
		echo_install "$BREW"
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	else
		echo_is_installed "$BREW"
	fi
}
