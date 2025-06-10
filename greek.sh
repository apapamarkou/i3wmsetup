#!/bin/bash

sudo pacman -S --needed --noconfirm greetd-tuigreet

# Define the target file
file="/etc/locale.gen"

# Define the line pattern to uncomment
pattern="#el_GR.UTF-8 UTF-8"

# Use sed to uncomment the line if it is commented
sudo sed -i "/^${pattern}/s/^#//" "$file"

echo "Uncommented the line: $pattern in $file"

sudo locale-gen

# Define the target file
file="/etc/locale.conf"

# Create or overwrite the file with the specified content
sudo tee "$file" > /dev/null << EOF
LANG=en_US.UTF-8
LC_CTYPE="el_GR.UTF-8"
LC_NUMERIC="el_GR.UTF-8"
LC_TIME="el_GR.UTF-8"
LC_COLLATE=C
LC_MONETARY="el_GR.UTF-8"
LC_MESSAGES="en_US.UTF-8"
LC_PAPER="el_GR.UTF-8"
LC_NAME="el_GR.UTF-8"
LC_ADDRESS="el_GR.UTF-8"
LC_TELEPHONE="el_GR.UTF-8"
LC_MEASUREMENT="el_GR.UTF-8"
LC_IDENTIFICATION="el_GR.UTF-8"
LC_ALL=
EOF

echo "$file has been created or updated successfully."

