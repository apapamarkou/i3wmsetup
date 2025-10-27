#!/bin/bash

# Check if yay is present
if ! command -v yay &> /dev/null
then
    echo "yay is not installed. Installing yay..."
    
    # Dependency install
    sudo pacman -S --needed --noconfirm git base-devel

    # Clone το yay repository από το AUR
    git clone https://aur.archlinux.org/yay.git
    cd yay

    # Compile and install
    makepkg -si

    # Clean
    cd ..
    rm -rf yay

    echo "yay installation complete."
else
    echo "yay is already installed."
fi

