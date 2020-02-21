#!/bin/bash

source $DOTFILES_SCRIPTS/helpers/echo.sh

generate_user_config() {
	cat << EOF
[user]
	name = $name
	email = $email
EOF
}

echo "Enter name: "
read name
echo "Enter e-mail: "
read email

generate_user_config > ~/.gituser
