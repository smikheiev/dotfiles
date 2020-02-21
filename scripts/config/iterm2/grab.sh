#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_grab_config "iTerm2"

cp ~/Library/Preferences/com.googlecode.iterm2.plist $DOTFILES_CONFIGS/iterm2/com.googlecode.iterm2.plist
plutil -convert xml1 $DOTFILES_CONFIGS/iterm2/com.googlecode.iterm2.plist #convert binary plist to xml
