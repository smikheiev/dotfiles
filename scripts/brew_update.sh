#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo ""
echo_sm "brew update"
brew update -v

echo ""
echo_sm "brew upgrade"
brew upgrade --display-times -v

echo ""
echo_sm "brew cask upgrade"
brew cask upgrade -v

echo ""
echo_sm "brew cleanup -s --prune"
brew cleanup -s --prune -v

echo ""
echo_sm "brew doctor"
brew doctor -v

echo ""
echo_sm "brew cask doctor"
brew cask doctor -v

echo ""
echo_sm "Well done, mate ;)"
