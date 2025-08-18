#!/bin/bash
options="Lock                       
Logout                     
Reboot                     
Shutdown                   "
selected=$(echo -e "$options" | fuzzel --dmenu --prompt 'Power Menu: ')
case "$selected" in
    "Lock                       ")
        swaylock --screenshot
        ;;
    "Logout                     ")
        niri msg action quit
        ;;
    "Reboot                     ")
        systemctl reboot
        ;;
    "Shutdown                   ")
        systemctl poweroff
        ;;
esac
