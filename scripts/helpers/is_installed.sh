#!/bin/bash

# This script has helper functions to check if some tool is installed.
# All functions return 0 if a tool is installed or -1 if not.

is_tool_installed() {
	tool=$1
	if type $tool >/dev/null 2>&1; then
		return 0
	fi
	return -1
}

is_brew_package_installed() {
	package=$1
	if (brew ls --versions $package) >/dev/null 2>&1; then
		return 0
	fi
	return -1
}

is_brew_cask_package_installed() {
	package=$1
	if (brew cask ls --versions $package) >/dev/null 2>&1; then
		return 0
	fi
	return -1
}
