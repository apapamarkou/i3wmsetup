# default applications
export EDITOR=/usr/bin/micro
export SHELL_GREETING=fetch
export VISUAL=/usr/bin/micro
export BROWSER=firefox
export TERM=alacritty
export PAGER="bat"
export SYSTEM_MONITOR="htop"
export NETWORK_CONFIG=nmtui
export SOUND_CONFIG=alsamixer
export MUSIC_PLAYER=fzf-music-player
export MUSIC_FOLDER=$HOME/Music

# nnn file manager setup
export NNN_USE_EDITOR=1
export NNN_OPTS="adeHx"
export NNN_COLORS="2345"
export NNN_PLUG=f:fzcd;o:open;p:preview-tui;i:imgview;c:copyimg
export NNN_FIFO=/tmp/nnn.fifo
export NNN_OPENER="xdg-open"

# Paths to local binaries
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/bin:$PATH

# theme related
export QT_QPA_PLATFORMTHEME=qt6ct

export LC_PAPER="en_US.UTF-8"
export LC_TIME="el_GR.UTF-8"
