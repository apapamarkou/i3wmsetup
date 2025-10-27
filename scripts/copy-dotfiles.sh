#!/bin/bash

# find the script path
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Copy dotfiles to home directory
cp -r $SCRIPT_DIR/dotfiles ~/
