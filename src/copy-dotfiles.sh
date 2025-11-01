#!/bin/bash

# __   _____  _   _ _   _ _____  __
# \ \ / / _ \| | | | \ | |_ _\ \/ /
#  \ V / | | | | | |  \| || | \  /
#   | || |_| | |_| | |\  || | /  \
#   |_| \___/ \___/|_| \_|___/_/\_\
#
# This is part of "YOUNIX" project
# Lisence GPL3
# Author: Andrianos Papamarkou
# Email: papamarkoua@gmail.com


# This script copies dotfiles to home directory
# Usage: ./copy-dotfiles.sh <path to dotfiles>

if [ -z "$1" ]; then
    echo "Usage: ./copy-dotfiles.sh <path to dotfiles>"
    exit 1
fi

# Copy dotfiles to home directory
rsync -av $1/dotfiles/ $HOME/
