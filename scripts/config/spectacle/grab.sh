#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_grab_config "Spectacle"

cp ~/Library/Application\ Support/Spectacle/Shortcuts.json $DOTFILES_CONFIGS/spectacle/Shortcuts.json
