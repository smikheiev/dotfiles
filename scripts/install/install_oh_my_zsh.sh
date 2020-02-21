#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/dir.sh
source $DOTFILES_SCRIPTS/helpers/echo.sh
source $DOTFILES_SCRIPTS/helpers/is_installed.sh
source $DOTFILES_SCRIPTS/install/install_brew_package.sh

OH_MY_ZSG="Oh My Zsh"
OH_MY_ZSH_DIR=~/.oh-my-zsh
POWERLEVEL10K="powerlevel10k"
POWERLEVEL10K_DIR=~/.oh-my-zsh/custom/themes/powerlevel10k

install_oh_my_zsh() {
	echo_check_if_installed "$OH_MY_ZSG"

	if ! is_existing_dir "$OH_MY_ZSH_DIR"; then
		echo_install "$OH_MY_ZSG"
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
	else
		echo_is_installed "$OH_MY_ZSG"
	fi

	echo_check_if_installed "$POWERLEVEL10K"

	if ! is_existing_dir "$POWERLEVEL10K_DIR"; then
		echo_install "$POWERLEVEL10K"
		git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
	else
		echo_is_installed "$POWERLEVEL10K"
	fi

	if [ $SHELL != $(which zsh) ]; then
		echo ""
		echo_sm "Change default shell to zsh"
		chsh -s $(which zsh)
	fi

	install_brew_package zsh-autosuggestions
	install_brew_package zsh-syntax-highlighting
	install_brew_package z
}
