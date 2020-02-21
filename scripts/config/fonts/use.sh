#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_sm "Install fonts"

cp $DOTFILES_CONFIGS/fonts/* /Library/Fonts
