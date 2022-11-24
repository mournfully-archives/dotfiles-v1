#! /bin/bash
# launch wallpaper-selector and set it to use 1920x1080 wallpapers 
# https://github.com/ronniedroid/Wall-d
monitor=$(xrandr --listactivemonitors | grep -m 1 'Monitors:' | awk '{print $2}')

if [ $monitor == "1" ]; then
    wall-d -d $XDG_DATA_HOME/wallpapers-2256x1504/ -f
elif [ $monitor == "2" ]; then
      wall-d -d $XDG_DATA_HOME/wallpapers-1920x1080/ -f
else
    echo "something went wrong with the launch.wallpapers script"
fi
