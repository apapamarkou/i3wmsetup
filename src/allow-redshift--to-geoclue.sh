#!/bin/bash

# Configuration settings to be added
CONFIG_LINES="
[redshift]
allowed=true
system=false
users=
"
CONFIG_FILE="/etc/geoclue/geoclue.conf"
SERVICE_NAME="geoclue.service"

echo "Starting Redshift/GeoClue2 configuration script..."

# 1. Check if the configuration section already exists
if grep -q "\[redshift\]" "$CONFIG_FILE"; then
    echo "✅ GeoClue configuration for Redshift already exists in $CONFIG_FILE. Skipping addition."
else
    echo "❌ Configuration section not found. Appending lines to $CONFIG_FILE..."

    # Use 'sudo tee -a' to safely append content to a file requiring root privileges
    echo "$CONFIG_LINES" | sudo tee -a "$CONFIG_FILE" > /dev/null

    if [ $? -eq 0 ]; then
        echo "✅ Lines successfully added."
    else
        echo "❌ Error: Failed to write to $CONFIG_FILE. Check your permissions."
        exit 1
    fi
fi

# 2. Restart the GeoClue service to apply changes
echo "Attempting to restart $SERVICE_NAME to apply changes..."

# Check if the service exists before attempting to restart it
if systemctl is-system-running | grep -q 'running\|degraded'; then
    if sudo systemctl restart "$SERVICE_NAME"; then
        echo "✅ GeoClue service restarted successfully."
        echo "Redshift should now be able to use GeoClue2."
    else
        echo "⚠️ Warning: Failed to restart $SERVICE_NAME. Please try running 'sudo systemctl restart $SERVICE_NAME' manually."
    fi
else
    echo "⚠️ Warning: systemd is not fully running or available. Skipping service restart."
fi

echo "Script finished."
