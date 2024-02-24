#!/bin/sh
volume=$(pactl get-sink-volume @DEFAULT_SINK@ | sed -n '1{s/[^/]*\///; s/%.*//; s/ //g;p}')

notify-send "󰕾" -h int:value:$volume -u low -r 420 -a "$volume"
