#!/usr/bin/env bash

# --- Configuration ---

# This script performs a backup of files and directories listed in a text file.
# It uses rsync to ensure data integrity and preserve directory structure, 
# maintaining the relative path structure inside the backup directory.

# Hardcoded paths as requested by the user:
LIST_FILE="$HOME/Documents/Development/i3wmsetup/src/sync-dotfiles.txt"
DEST_DIR="$HOME/Documents/Development/i3wmsetup/dotfiles"

# --- Functions ---

# Function to display errors and exit
error_exit() {
    echo -e "\n❌ ERROR: $1" >&2
    exit 1
}

# --- Validation ---

echo "--- Sync Utility for Selected Home Files ---"
echo "List File expected at: $LIST_FILE"
echo "Destination directory: $DEST_DIR"
echo "----------------------------------------------"

if [[ ! -f "$LIST_FILE" ]]; then
    error_exit "The list file '$LIST_FILE' was not found. Please create it with relative paths inside /src."
fi

# Create the destination directory if it doesn't exist
if [[ ! -d "$DEST_DIR" ]]; then
    echo "Destination '$DEST_DIR' does not exist. Creating it now..."
    mkdir -p "$DEST_DIR" || error_exit "Failed to create destination directory."
fi

# --- Main Backup Logic ---

echo "--- Starting Backup ---"
echo "Source root: $HOME/"
echo "-----------------------"

# Use rsync to perform the copy.
# -a: archive mode (preserves permissions, timestamps, owner, group, etc.)
# -v: verbose output (show which files are being copied)
# -z: compress file data during transfer (optional, but good practice)
# --files-from: reads the list of files/directories to copy from the specified file.
# Note: The source is "$HOME/" (trailing slash is critical).
# The source $HOME/ combined with --files-from ensures that paths like 
# "Pictures/MyImage.jpg" in the list file are copied to "$DEST_DIR/Pictures/MyImage.jpg".

rsync -avz --files-from=<(sed "s#^$HOME/##" "$LIST_FILE") "$HOME"/ "$DEST_DIR"/


# --- Conclusion ---

if [[ $? -eq 0 ]]; then
    echo -e "\n✅ Backup successfully completed to $DEST_DIR/"
else
    echo -e "\n Backup finished, but rsync encountered errors. Check the logs above."
fi

# A successful script should always exit with 0
exit 0
