#!/bin/bash

source ./.dbus-session

# Ambil jam saat ini dalam format 24 jam
current_hour=$(date +%H)

# Jika jam >= 18 atau < 6, atur ke mode gelap; jika tidak, atur ke mode
# terang
if [ "$current_hour" -ge 18 ] || [ "$current_hour" -lt 6 ]; then
    gsettings set org.gnome.desktop.interface color-scheme prefer-dark
else
    gsettings set org.gnome.desktop.interface color-scheme prefer-light
fi
