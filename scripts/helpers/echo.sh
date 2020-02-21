#!/bin/bash

# This script has helper functions to echo some info.

echo_sm() {
	text="$1"
	echo -e "[SM] $text"
}

echo_check_if_installed() {
	name="$1"
	echo ""
	echo_sm "Check if $name is installed"
}

echo_install() {
	name="$1"
	echo_sm "Install $name"
}

echo_is_installed() {
	name="$1"
	echo_sm "$name is installed"
}

echo_use_config() {
	name="$1"
	echo_sm "Use config for $name"
}

echo_grab_config() {
	name="$1"
	echo_sm "Grab config for $name"
}
