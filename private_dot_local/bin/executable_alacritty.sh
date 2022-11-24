#!/bin/sh 

run_alacritty(){
    alacritty --working-directory /home/local/ -o font.size=$font_size -e tmux 
}

# change font size if external monitor is detected
monitor=$(xrandr --listactivemonitors | grep -m 1 'Monitors:' | awk '{print $2}')

case "$monitor" in
    "") echo "No option chosen";;
    "1") font_size="5.0";;
    "2") font_size="11.0";;
esac

# debugging
# echo $monitor
# echo $font_size

run_alacritty

