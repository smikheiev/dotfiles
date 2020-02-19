#!/bin/bash

# This script has helper functions for directories.

# Returns 0 if a dir exists or -1 if not.
is_existing_dir() {
	dir=$1
	if [[ -d $dir ]]; then
	  return 0
	fi
	return -1
}
