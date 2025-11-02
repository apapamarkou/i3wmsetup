#!/bin/sh

# 1. Load X resources FIRST
[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# 2. Start i3 as the last command
exec i3

