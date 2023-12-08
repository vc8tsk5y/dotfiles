#!/bin/sh
mute_status=$(pactl get-sink-mute @DEFAULT_SINK@)

if [[ $mute_status == *"Mute: no"* ]]; then
    $HOME/dotfiles/.config/qtile/scripts/notify-volume.sh
elif [[ $mute_status == *"Mute: yes"* ]]; then
    notify-send -u low -r 420 -a "" "󰝟"
else
    notify-send -u low -r 420 -a output "Unable to determine mute staus"
fi
