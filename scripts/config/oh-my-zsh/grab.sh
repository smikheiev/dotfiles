#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_grab_config "Oh My Zsh"

cp ~/.zshrc $DOTFILES_CONFIGS/oh-my-zsh/zshrc
cp ~/.p10k.zsh $DOTFILES_CONFIGS/oh-my-zsh/p10k.zsh
