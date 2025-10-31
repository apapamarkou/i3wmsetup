cdf() {
    local DIR
    DIR=$(find ~ -type d 2>/dev/null | fzf \
        --prompt="📂 cd > " \
        --preview 'tree -L 1 {} | head -20' \
        --preview-window=right:50%:wrap \
        --height=80%)
    [ -n "$DIR" ] && cd "$DIR"
}
