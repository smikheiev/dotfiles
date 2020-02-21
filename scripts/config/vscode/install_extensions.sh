#!/bin/bash

oifs=$IFS # save a copy of the input field separator (IFS) character list
IFS=$'\n'
extensions=( $(< $DOTFILES_CONFIGS/vscode/extensions.txt) )
IFS=$oifs # restore IFS

for ext in "${extensions[@]}"; do
	code --install-extension $ext
done
