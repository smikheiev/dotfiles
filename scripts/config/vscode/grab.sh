#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_grab_config "Visual Studio Code"

cp ~/Library/Application\ Support/Code/User/settings.json $DOTFILES_CONFIGS/vscode/settings.json
