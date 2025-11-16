#!/usr/bin/env bash
set -e

useradd -m user
echo "user:user" | chpasswd

chsh -s /usr/bin/fish user
chmod a+x /home/user/.xinitrc

systemctl enable greetd.service
systemctl enable seatd.service

# chmod a+x /home/user/.screenlayout/default.sh
# chmod a+x /home/user/.fehbg
# chmod a+x /home/user/.xinitrc
# chmod a+x /home/user/.config/autostart/*
# chmod a+x /home/user/.local/bin/*
# chmod a+x /home/user/.config/i3/script/*
# chmod a+x /home/user/.config/polybar/scripts/*
