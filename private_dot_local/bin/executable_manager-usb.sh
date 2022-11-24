#!/usr/bin/env bash

# https://github.com/I-LeCorbeau/debian-live-build/blob/main/config/includes.chroot_after_packages/etc/skel/.local/bin/usbpoweroff
poweroff() {
    udisksctl power-off -b $(lsblk -lp | awk '/part/ {print $1, "(" $4 ")"}' | dmenu -i -fn 'JetBrainsMono Nerd Font:style:regular:size=11' -nb '#232634' -nf '#edeff1' -sb '#edeff1' -sf '#232634' -p 'poweroff')
}

# https://github.com/I-LeCorbeau/debian-live-build/blob/main/config/includes.chroot_after_packages/etc/skel/.local/bin/usbmount
mount() {
    udisksctl mount -b $(lsblk -lp | awk '/part/ {print $1, "(" $4 ")"}' | dmenu -i -fn 'JetBrainsMono Nerd Font:style:regular:size=11' -nb '#232634' -nf '#edeff1' -sb '#edeff1' -sf '#232634' -p 'mount')
}

# https://github.com/I-LeCorbeau/debian-live-build/blob/main/config/includes.chroot_after_packages/etc/skel/.local/bin/usbunmount
unmount() {
    udisksctl unmount -b $(lsblk -lp | awk '/part/ {print $1, "(" $4 ")"}' | dmenu -i -fn 'JetBrainsMono Nerd Font:style:regular:size=11' -nb '#232634' -nf '#edeff1' -sb '#edeff1' -sf '#232634' -p 'unmount')

}

# https://github.com/I-LeCorbeau/debian-live-build/blob/main/config/includes.chroot_after_packages/etc/skel/.local/bin/poweroffreboot
menu(){
    CHOICE=$(echo "poweroff\nmount\nunmount" | dmenu -i -fn 'JetBrainsMono Nerd Font:style:regular:size=11' -nb '#232634' -nf '#edeff1' -sb '#edeff1' -sf '#232634' -p ?)
    case "$CHOICE" in
        poweroff) usb.sh poweroff & ;;
        mount) usb.sh mount & ;;
        unmount) usb.sh unmount & ;;
    esac
}

# https://github.com/saysjonathan/dwm.tmux/blob/master/bin/dwm.tmux
subcommand=$1
case $subcommand in
    poweroff) poweroff;;
    mount) mount;;
    unmount) unmount;;
    *) menu;;
esac
