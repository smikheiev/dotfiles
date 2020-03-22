#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

SUBFOLDER=$1

# get extensions that should be installed
oifs=$IFS # save a copy of the input field separator (IFS) character list
IFS=$'\n'
should_be_installed=( $(< $DOTFILES_CONFIGS/vscode/extensions.txt) )

if [ -n "$SUBFOLDER" ]; then
	should_be_installed+=( $(< $DOTFILES_CONFIGS/vscode/$SUBFOLDER/extensions.txt) )
fi
IFS=$oifs # restore IFS

# get already installed extensions
already_installed=( `code --list-extensions` )

# get extensions to install
to_install=()
for ext in "${should_be_installed[@]}"; do
	if [[ ${already_installed[*]} =~ $ext ]]; then
		echo_sm "Extension is already installed: $ext"
	else
		echo_sm "Extension will be installed: $ext"
		to_install+=("$ext")
	fi
done

# print extensions that are installed but are not in the list of extensions that should be installed
for ext in "${already_installed[@]}"; do
	if [[ ! ${should_be_installed[*]} =~ $ext ]]; then
		echo_sm "Installed extension not from list: $ext"
	fi
done

# install extensions
for ext in "${to_install[@]}"; do
	code --install-extension "$ext"
done
