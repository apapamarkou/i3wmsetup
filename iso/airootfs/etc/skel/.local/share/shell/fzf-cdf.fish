function cdf
    # Αν έχει δοθεί όρισμα, χρησιμοποίησέ το — αλλιώς το τρέχον directory
    set DIR (or $argv (pwd))

    # Βρες όλους τους φακέλους recursively από εκεί και κάτω
    set DIRS (find $DIR -type d 2>/dev/null)

    if test (count $DIRS) -eq 0
        echo "No directories found in $DIR"
        return
    end

    # Επιλογή με fzf
    set choice (printf "%s\n" $DIRS | fzf \
        --prompt "  cd > " \
        --height 80% \
        --layout reverse \
        --preview 'tree -L 1 {} | head -20' \
        --preview-window right:50%:wrap)

    # Αν επιλέξεις κάτι, άλλαξε directory
    if test -n "$choice"
        cd "$choice"
    end
end
