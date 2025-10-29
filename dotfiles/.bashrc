#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias cls='clear'
alias ls='ls -hp --group-directories-first --color=auto'
alias top='top -E g -o PID'
alias free='free -hw'
alias df='df -hPT'
alias grep='grep --color=auto'
alias update="sudo pacman -Syu"
alias install="sudo pacman -S --needed"
alias i3conf="micro ~/.config/i3/config"
alias fishconf="micro ~/.config/fish/config.fish"
alias profile="micro ~/.profile"
alias bashrc="micro ~/.bashrc"
alias usage='dua i'

PS1='[\u@\h \W]\$ '

fetch
