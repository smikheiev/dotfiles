#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

echo_sm "Grab all configs"

for dir in $DOTFILES_SCRIPTS/config/*; do
	$dir/grab.sh
done
