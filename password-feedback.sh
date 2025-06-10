#!/bin/bash

# Script to backup /etc/sudoers, modify it if needed, and reset terminal

# Backup /etc/sudoers
sudo cp /etc/sudoers /etc/sudoers.bak
if [ $? -ne 0 ]; then
  echo "[ERROR] Failed to create a backup of /etc/sudoers."
  exit 1
else
  echo "[INFO] Backup of /etc/sudoers created at /etc/sudoers.bak"
fi

# Check if "Defaults env_reset,pwfeedback" already exists
if sudo grep -q "^Defaults env_reset,pwfeedback" /etc/sudoers; then
  echo "[INFO] The line 'Defaults env_reset,pwfeedback' already exists. Exiting."
  exit 0
fi

# Check if "Defaults env_reset" exists, and replace it
if sudo grep -q "^Defaults env_reset" /etc/sudoers; then
  echo "[INFO] Replacing 'Defaults env_reset' with 'Defaults env_reset,pwfeedback'."
  sudo sed -i 's/^Defaults env_reset.*/Defaults env_reset,pwfeedback/' /etc/sudoers
  if [ $? -ne 0 ]; then
    echo "[ERROR] Failed to modify /etc/sudoers."
    exit 1
  else
    echo "[INFO] Line replaced successfully."
  fi
else
  # Append if "Defaults env_reset" does not exist
  echo "[INFO] Adding 'Defaults env_reset,pwfeedback' to /etc/sudoers."
  sudo sh -c 'echo "Defaults env_reset,pwfeedback" >> /etc/sudoers'
  if [ $? -ne 0 ]; then
    echo "[ERROR] Failed to modify /etc/sudoers."
    exit 1
  else
    echo "[INFO] Line added successfully."
  fi
fi

# Reset terminal
reset
