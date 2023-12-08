#!/bin/sh
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | sed -n '1{s/[^/]*\///; s/\/.*//p}')

notify-send -u low -r 420 -a "$volume" "󰕾"
