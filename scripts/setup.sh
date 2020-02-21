#!/bin/bash

# This script installs everything needed on new system

# export vars for current shell so they'll be available from other scripts
export DOTFILES=$HOME/dotfiles
export DOTFILES_SCRIPTS=$DOTFILES/scripts
export DOTFILES_CONFIGS=$DOTFILES/configs

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo ""
$DOTFILES_SCRIPTS/install_all.sh

echo ""
$DOTFILES_SCRIPTS/configs_use_all.sh

echo ""
echo_sm "Add login items"
$DOTFILES_SCRIPTS/login_items.sh add_login_item "/Applications/Spectacle.app"
