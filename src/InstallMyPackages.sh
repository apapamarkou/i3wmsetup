#!/bin/bash

DESKTOP_REPO='autotiling polybar arandr pavucontrol brightnessctl dex dunst lxsession jq network-manager-applet networkmanager xfce4-clipman-plugin power-profiles-daemon rofi ttf-jetbrains-mono-nerd calcurse htop btop power-profiles-daemon fzf bluetui dua-cli usbutils alacritty maim slop xdotool xorg-xdpyinfo xorg-xwininfo gpick '
DESKTOP_AUR='aarchup '

THEME_REPO='kvantum kvantum-theme-materia materia-gtk-theme lxappearance qt5ct qt6ct '

FILES_REPO='nnn gvfs thunar thunar-archive-plugin thunar-media-tags-plugin thunar-vcs-plugin thunar-volman tumbler unzip xarchiver gvfs-afc gvfs-dnssd gvfs-goa gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-onedrive gvfs-smb gvfs-wsdd '

MAN_REPO='man-db man-pages man-pages-el '

<<<<<<< HEAD
GUI_APPS_REPO='firefox okular obsidian qpwgraph keepassxc '
GUI_APPS_AUR='visual-studio-code-bin naps2 onlyoffice-bin '
=======
GUI_APPS_REPO='firefox okular obsidian qpwgraph keepassxc mousepad '
# GUI_APPS_AUR='visual-studio-code-bin naps2 onlyoffice-bin '
>>>>>>> 4c33e25c9ced92fc5635818d964f4b2a6c6f99b5

TUI_APPS_REPO='mame micro nvim '
# TUI_APPS_AUR='pacseek-bin pyradio '

<<<<<<< HEAD
CLI_TOOLS_REPO='fish figlet rsync bc cmatrix inetutils plocate '
CLI_TOOLS_AUR='cava '
=======
CLI_TOOLS_REPO='fish figlet fastfetch rsync bc cmatrix inetutils plocate '
# CLI_TOOLS_AUR='cava '
>>>>>>> 4c33e25c9ced92fc5635818d964f4b2a6c6f99b5

# Multimedia
MULTIMEDIA_REPO='mpv feh ' 

sudo pacman -S --needed --noconfirm $DESKTOP_REPO $THEME_REPO $FILES_REPO $MAN_REPO $GUI_APPS_REPO $TUI_APPS_REPO $CLI_TOOLS_REPO $MULTIMEDIA_REPO
yay -S --needed --noconfirm $DESKTOP_AUR $GUI_APPS_AUR $TUI_APPS_AUR $CLI_TOOLS_AUR

sudo pacman -R --noconfirm xterm