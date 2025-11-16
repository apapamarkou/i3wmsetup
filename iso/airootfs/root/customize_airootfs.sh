#!/usr/bin/env bash
set -e

useradd -m user
echo "user:user" | chpasswd

chsh -s /usr/bin/fish user

systemctl enable greetd.service
systemctl enable seatd.service   # προτείνεται
