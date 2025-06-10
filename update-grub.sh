#!/bin/bash

# Define the target file
target_file="/usr/sbin/update-grub"

# Create the file with the desired content
sudo tee "$target_file" > /dev/null << 'EOF'
#!/bin/sh
set -e
exec grub-mkconfig -o /boot/grub/grub.cfg "$@"
EOF

# Make the script executable
sudo chmod +x "$target_file"

sudo chown root:root /usr/sbin/update-grub
sudo chmod 755 /usr/sbin/update-grub

echo "$target_file created and made executable."
