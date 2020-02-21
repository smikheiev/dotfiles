#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_use_config "Oh My Zsh"

cp $DOTFILES_CONFIGS/oh-my-zsh/zshrc ~/.zshrc
cp $DOTFILES_CONFIGS/oh-my-zsh/p10k.zsh ~/.p10k.zsh
