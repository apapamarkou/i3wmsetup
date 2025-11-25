$SHELL_GREETING

[[ -f ~/.profile ]] && source ~/.profile
source ~/.local/share/shell/fzf-cdf.bash
source ~/.local/share/shell/aliases
eval "$(starship init zsh)"


