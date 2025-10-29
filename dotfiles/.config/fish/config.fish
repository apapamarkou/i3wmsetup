# ❯ Fancy Greeting (on shell startup)
function fish_greeting
    fetch
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


alias ls="lsd"
alias update="sudo pacman -Syu"
alias cls="clear"
alias edit="micro"
alias ed="micro"
alias install="sudo pacman -S --needed"
alias i3conf="micro ~/.config/i3/config"
alias fishconf="micro ~/.config/fish/config.fish"
