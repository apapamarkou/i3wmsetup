#!/bin/bash

# Copy dotfiles to home directory
rsync -av $1/dotfiles/ $HOME/
