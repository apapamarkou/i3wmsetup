# default applications
export EDITOR=editor
export TEXT_EDITOR=micro
export SHELL_GREETING=fetch
export VISUAL=/usr/bin/micro
export BROWSER=firefox
export TERMINAL=xfce4-terminal
export PAGER="bat"
export SYSTEM_MONITOR=htop
export NETWORK_CONFIG=nmtui
export SOUND_CONFIG=alsamixer
export MUSIC_PLAYER=fzf-music-player
export MUSIC_FOLDER=$HOME/Music
export FILE_MANAGER=files
# export APPLICATION_LAUNCHER=launcher
export APPLICATION_LAUNCHER="yapps -t"
export CONTROL_PANEL="ycc -t"

# System Variables
export DISTRO_NAME=YoUNiX
export LOCK_DIR=$HOME/.config/ylock
export FLOATING_PREFIX=":YoUNiX"

export WALLPAPER_DIR=$HOME/Pictures/Wallpapers


# nnn file manager setup
export NNN_USE_EDITOR=1
export NNN_OPTS="adeHx"
export NNN_COLORS="2345"
export NNN_PLUG=f:fzcd;
export NNN_FIFO=/tmp/nnn.fifo
export NNN_OPENER="xdg-open"

# Paths to local binaries
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/bin/younix:$PATH
export PATH=$HOME/bin:$PATH

# theme related
# export QT_QPA_PLATFORMTHEME=qt6ct
export QT_QPA_PLATFORMTHEME=gtk3
export QT_FONT_DPI=96
export QT_QPA_FONTDIR=/usr/share/fonts
export QT_ICON_THEME=Breeze-Dark

# Language Settings
export LANG="en_US.UTF-8"
