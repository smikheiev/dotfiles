#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_sm "Use all configs"

for dir in $DOTFILES_SCRIPTS/config/*; do
	$dir/use.sh
done
