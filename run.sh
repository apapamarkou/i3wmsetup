#!/bin/bash

# find the script path
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Setup git
$SCRIPT_DIR/scripts/git.sh
# enable Greek language support
$SCRIPT_DIR/scripts/scripts/greek.sh
# change display manager to TUI Greeter
$SCRIPT_DIR/scripts/scripts/greet.sh
# Enable password feedback
$SCRIPT_DIR/scripts/scripts/password-feedback.sh
# Make the update-grub command
$SCRIPT_DIR/scripts/update-grub.sh
# Install yay
$SCRIPT_DIR/scripts/yay.sh
# Install wine
$SCRIPT_DIR/scripts/wine.sh
# Install pro-audio support
$SCRIPT_DIR/scripts/pro-audio.sh
# Install all my packages
$SCRIPT_DIR/scripts/InstallMyPackages.sh
# Change shell to fish
chsh -s /usr/bin/fish
$SCRIPT_DIR/scripts/copy-dotfiles.sh
