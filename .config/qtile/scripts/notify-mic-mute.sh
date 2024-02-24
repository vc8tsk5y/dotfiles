#!/bin/sh
mute_status=$(pactl get-source-mute @DEFAULT_SOURCE@)

if [[ $mute_status == *"Mute: no"* ]]; then
    notify-send -u low -r 420 -a "" "󰍬"
elif [[ $mute_status == *"Mute: yes"* ]]; then
    notify-send -u low -r 420 -a "" "󰍭"
else
    notify-send -u low -r 420 -a microphone "Unable to determine mute staus"
fi
