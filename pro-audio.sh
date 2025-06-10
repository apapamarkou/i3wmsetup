#!/bin/bash

# add user to audio group
sudo usermod -a -G audio $USER

# Define the lines to be added
line1="@audio           -      rtprio           95"
line2="@audio           -      memlock          unlimited"
line3="@audio           -      nice             10"

# Define the target file
file="/etc/security/limits.conf"

# Check if the lines exist in the file
if grep -qF "$line1" "$file" || grep -qF "$line2" "$file" || grep -qF "$line3" "$file"; then
    echo "Lines found. Replacing them..."

    # Remove existing lines that match the patterns
    sudo sed -i "/^@audio.*rtprio/d" "$file"
    sudo sed -i "/^@audio.*memlock/d" "$file"
    sudo sed -i "/^@audio.*nice/d" "$file"
    
    # Add the new lines before the "# End of file" line
    sudo sed -i "/# End of file/i $line1\n$line2\n$line3" "$file"
    echo "Lines replaced successfully."
else
    echo "Lines not found in $file. Adding them..."
    
    # Add the new lines before the "# End of file" line
    sudo sed -i "/# End of file/i $line1\n$line2\n$line3" "$file"
    echo "Lines added successfully."
fi
