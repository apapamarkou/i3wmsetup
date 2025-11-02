#!/bin/bash

# __   _____  _   _ _   _ _____  __
# \ \ / / _ \| | | | \ | |_ _\ \/ /
#  \ V / | | | | | |  \| || | \  /
#   | || |_| | |_| | |\  || | /  \
#   |_| \___/ \___/|_| \_|___/_/\_\
#
# Lisence GPL3
# Homepage: https://github.com/apapamarkou/younix
# Author: Andrianos Papamarkou
# Email: papamarkoua@gmail.com
# find the script path

# This script is used to install all the packages and configurations
# This script need elevated privileges.
echo "This script need elevated privileges" 1>&2

# Mark the script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Setup git
$SCRIPT_DIR/src/configure-git

# enable Greek language support
$SCRIPT_DIR/src/install-locale

# change display manager to TUI Greeter
$SCRIPT_DIR/src/install-and-switch-to-tui-greet

# Enable password feedback
$SCRIPT_DIR/src/password-feedback

# Make the update-grub command
$SCRIPT_DIR/src/install-update-grub

# Install yay
$SCRIPT_DIR/src/install-yay

# Install wine
$SCRIPT_DIR/src/install-pro-audio-support

# Install pro-audio support
$SCRIPT_DIR/src/install-windows-vst-support

# Install all my packages
$SCRIPT_DIR/src/package-installer

# Change shell to fish
# chsh -s /usr/bin/fish

# Install AppImage Integrator
$SCRIPT_DIR/src/install-appimage-integrator

# Sync dotfiles
$SCRIPT_DIR/src/copy-dotfiles $SCRIPT_DIR

# Enable power-profiles-daemon
sudo systemctl enable power-profiles-daemon
sudo systemctl start power-profiles-daemon

# Update the locate database
sudo updatedb
