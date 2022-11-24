#!/bin/bash 

pkill -USR1 -x sxhkd  # reload keybindings
# xsetroot -name ""  # clean statusbar of artificats
# tmux source-file ~/.config/tmux/tmux.conf  # reload tmux config

# kill statusbar script and relaunch
kill -9 $(pgrep statusbar.sh)
statusbar.sh &

