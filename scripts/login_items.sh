#!/bin/bash

list_login_items() {
	osascript -e "tell application \"System Events\" to get the name of every login item"
}

add_login_item() {
	path=$1

	if [ -z $path ]; then
		echo "Path should be the first parameter"
		return -1
	fi

	osascript -e "tell application \"System Events\" to make login item at end with properties {path:\"$path\"}"
}

remove_login_item() {
	name=$1

	if [ -z $name ]; then
		echo "Name should be the first parameter"
		return -1
	fi

	osascript -e "tell application \"System Events\" to delete login item \"$name\""
}

# will call a function passed via command line arguments
"$@"
