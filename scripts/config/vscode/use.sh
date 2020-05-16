#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_use_config "Visual Studio Code"

DIR=~/Library/'Application Support'/Code/User
mkdir -p "$DIR"
cp $DOTFILES_CONFIGS/vscode/settings.json "$DIR"
cp $DOTFILES_CONFIGS/vscode/keybindings.json "$DIR"

$DOTFILES_SCRIPTS/config/vscode/install_extensions.sh
