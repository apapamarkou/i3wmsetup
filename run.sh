#!/bin/bash

# find the script path
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Setup git
$SCRIPT_DIR/src/git.sh

# enable Greek language support
$SCRIPT_DIR/src/greek.sh

# change display manager to TUI Greeter
$SCRIPT_DIR/src/greet.sh

# Enable password feedback
$SCRIPT_DIR/src/password-feedback.sh

# Make the update-grub command
$SCRIPT_DIR/src/update-grub.sh

# Install yay
$SCRIPT_DIR/src/yay.sh

# Install wine
# $SCRIPT_DIR/src/wine.sh

# Install pro-audio support
# $SCRIPT_DIR/src/pro-audio.sh

# Install all my packages
$SCRIPT_DIR/src/InstallMyPackages.sh
# Change shell to fish
# chsh -s /usr/bin/fish
$SCRIPT_DIR/src/copy-dotfiles.sh $SCRIPT_DIR

sudo systemctl enable power-profiles-daemon
sudo systemctl start power-profiles-daemon
sudo updatedb
