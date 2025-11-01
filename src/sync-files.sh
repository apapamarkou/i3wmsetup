#!/bin/bash

# Βρες τον φάκελο όπου βρίσκεται το script (π.χ. .../dotfile-project/src)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Ορίζουμε το path για το project root (ένα επίπεδο πάνω από το src)
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

# Ορισμός αρχείων
LIST_FILE="$SCRIPT_DIR/sync-files.txt"
DEST="$PROJECT_ROOT/dotfiles"

mkdir -p "$DEST"

while IFS= read -r path || [ -n "$path" ]; do
    # Παράλειψη κενών γραμμών και σχολίων
    [[ -z "${path// }" || "${path:0:1}" == "#" ]] && continue

    SRC="$HOME/$path"

    if [ -e "$SRC" ]; then
        echo "Syncing: $SRC -> $DEST"
        rsync -a --relative --delete "$SRC" "$DEST"
    else
        echo "⚠️ Missing: $SRC"
    fi
done < "$LIST_FILE"
