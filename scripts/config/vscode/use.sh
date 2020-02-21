#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_use_config "Visual Studio Code"

mkdir -p ~/Library/Application\ Support/Code/User && cp $DOTFILES_CONFIGS/vscode/settings.json "$_"
$DOTFILES_SCRIPTS/config/vscode/install_extensions.sh
