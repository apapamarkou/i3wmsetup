#!/bin/bash

# Script to set up Wine, Winetricks, and Yabridge for VST plugin directories

sudo pacman -S --needed  --noconfirm avldrums.lv2 carla dragonfly-reverb-lv2 guitarix qpwgraph reapack reaper sws wine-staging winetricks yabridge yabridgectl

# Define VST plugin paths
VST_PATH1="$HOME/.wine/drive_c/Program Files/Steinberg/VstPlugins"
VST_PATH2="$HOME/.wine/drive_c/Program Files/Common Files/VST3"
VST_PATH3="$HOME/.wine/drive_c/Program Files/VSTPlugins"

# Function to print progress messages
print_message() {
  echo -e "\n[INFO] $1\n"
}

# Self-update Winetricks
print_message "Updating Winetricks..."
sudo winetricks --self-update

# Install necessary Winetricks component
print_message "Installing vcrun6sp6 via Winetricks..."
winetricks vcrun6sp6

# Open Wine configuration
print_message "Opening Wine configuration..."
winecfg

# Create required directories for VST plugins
print_message "Creating directories for VST plugins..."
mkdir -p "$VST_PATH1"
mkdir -p "$VST_PATH2"
mkdir -p "$VST_PATH3"

# Add directories to Yabridge
print_message "Adding Steinberg VSTPlugins to Yabridge..."
yabridgectl add "$VST_PATH1"

print_message "Adding Common VST3 plugins to Yabridge..."
yabridgectl add "$VST_PATH2"

print_message "Adding VSTPlugins to Yabridge..."
yabridgectl add "$VST_PATH3"

print_message "Setup complete!"
