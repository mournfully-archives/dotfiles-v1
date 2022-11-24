#!/bin/sh

alacritty --working-directory /home/local/ -e tmux &
# all running instances of chromium MUST be down (pkill chromium)
chromium --restore-last-session &

code-oss &
obsidian &

