#!/bin/bash

DESKTOP_REPO='autotiling polybar arandr tree alsa-utils pavucontrol brightnessctl dex dunst lxsession jq network-manager-applet networkmanager xfce4-clipman-plugin power-profiles-daemon rofi ttf-jetbrains-mono-nerd calcurse htop btop power-profiles-daemon fzf bluetui dua-cli usbutils alacritty maim slop xdotool xorg-xdpyinfo xorg-xwininfo gpick redshift geoclue '
# DESKTOP_AUR='aarchup '

THEME_REPO='kvantum kvantum-theme-materia materia-gtk-theme lxappearance qt6ct '

FILES_REPO='nnn gvfs thunar thunar-archive-plugin thunar-media-tags-plugin thunar-vcs-plugin thunar-volman tumbler unzip xarchiver gvfs-afc gvfs-dnssd gvfs-goa gvfs-google gvfs-gphoto2 gvfs-mtp gvfs-nfs gvfs-onedrive gvfs-smb gvfs-wsdd '

MAN_REPO='man-db man-pages man-pages-el '

GUI_APPS_REPO='firefox qpwgraph keepassxc '
#GUI_APPS_AUR='visual-studio-code-bin naps2 onlyoffice-bin '

TUI_APPS_REPO='mame micro nvim '
# TUI_APPS_AUR='pacseek-bin pyradio '

CLI_TOOLS_REPO='fish figlet fastfetch rsync bc cmatrix inetutils plocate '
# CLI_TOOLS_AUR='cava '

MULTIMEDIA_REPO='mpv feh ' 

sudo pacman -S --needed --noconfirm $DESKTOP_REPO $THEME_REPO $FILES_REPO $MAN_REPO $GUI_APPS_REPO $TUI_APPS_REPO $CLI_TOOLS_REPO $MULTIMEDIA_REPO
yay -S --needed --noconfirm $DESKTOP_AUR $GUI_APPS_AUR $TUI_APPS_AUR $CLI_TOOLS_AUR

sudo pacman -R --noconfirm xterm

# TODO 
# install appimage integrator
# install okular obsidian as appimages

