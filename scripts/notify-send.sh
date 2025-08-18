#!/bin/bash
# notify-send.sh
# Usage: notify-send.sh [ICON] [TITLE] [VALUE]

ICON=$1
TITLE=$2
VALUE=$3

dunstify -i "$ICON" -t 2000 -h string:x-dunst-stack-tag:brightness-volume -h int:value:"$VALUE" "$TITLE"
