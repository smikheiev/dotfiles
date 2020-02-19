#!/bin/bash

# This script has helper functions to echo some info.

echo_check_if_installed() {
	name="$1"
	echo ""
	echo -e "[SM] Check if $name is installed"
}

echo_install() {
	name="$1"
	echo -e "[SM] Install $name"
}

echo_is_installed() {
	name="$1"
	echo -e "[SM] $name is installed"
}
