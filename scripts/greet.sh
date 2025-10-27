#!/bin/bash

# Disable all possible display managers
echo "Disabling all possible display managers..."
sudo systemctl disable gdm.service
sudo systemctl disable lightdm.service
sudo systemctl disable sddm.service
sudo systemctl disable lxdm.service

# Createding config for greetd
echo "Creating config file /etc/greetd/config.toml..."
sudo tee /etc/greetd/config.toml > /dev/null << EOF
[terminal]
vt = 1

[default_session]
command = "/usr/bin/tuigreet --remember"
user = "greeter"
EOF

# Enable greetd
echo "Enabling greetd..."
sudo systemctl enable greetd.service


echo "Greetd is enabled. It will be activated at next boot"

