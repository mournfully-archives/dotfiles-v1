#!/usr/bin/env bash

alacritty --working-directory /home/local/ -e tmux &
# all running instances of chromium MUST be down (pkill chromium)
chromium --restore-last-session &

code-oss &
exec $XDG_CONFIG_HOME/obsidian/Obsidian-1.0.0.AppImage

