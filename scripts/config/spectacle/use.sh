#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_use_config "Spectacle"

mkdir -p ~/Library/Application\ Support/Spectacle && cp $DOTFILES_CONFIGS/spectacle/Shortcuts.json "$_"
