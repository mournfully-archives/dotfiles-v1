#!/usr/bin/env bash 

pkill -USR1 -x sxhkd  # reload keybindings

# kill statusbar script and relaunch
xsetroot -name ""  # clean statusbar of artificats
kill -9 $(pgrep statusbar.sh)
statusbar.sh &

tmux source-file ~/.config/tmux/tmux.conf  # reload tmux config
