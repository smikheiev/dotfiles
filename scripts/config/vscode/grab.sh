#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_grab_config "Visual Studio Code"

DIR=~/Library/'Application Support'/Code/User
cp "$DIR/settings.json" $DOTFILES_CONFIGS/vscode/settings.json
cp "$DIR/keybindings.json" $DOTFILES_CONFIGS/vscode/keybindings.json
