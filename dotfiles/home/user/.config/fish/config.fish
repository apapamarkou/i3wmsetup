# ❯ Fancy Greeting (on shell startup)
function fish_greeting
    $SHELL_GREETING
end

# ❯ Git-aware Fancy Prompt using Starship (recommended)
if type -q starship
    starship init fish | source
else
    function fish_prompt
        set_color green
        printf "%s" (prompt_pwd)
        set_color normal
        printf " ❯ "
    end
end

source ~/.local/share/shell/fzf-cdf.fish
source ~/.local/share/shell/aliases

