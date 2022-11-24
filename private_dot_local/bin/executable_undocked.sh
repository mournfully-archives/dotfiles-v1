#!/bin/sh
# https://github.com/saysjonathan/dwm.tmux/blob/master/bin/dwm.tmux
subcommand=$1
case $subcommand in
    os) os.sh;;
esac 

# make caps lock a control key
# setxkbmap -option ctrl:nocaps 

# setup primary monitor and shutdown display port
xrandr --output eDP-1 --primary --mode 2256x1504 --pos 0x0 --rotate normal --output DP-1 --off --output HDMI-1 --off --output DP-2 --off --output HDMI-2 --off

# set a random wallpaper
wall-d -d $XDG_DATA_HOME/wallpapers-2256x1504/ -f -n

