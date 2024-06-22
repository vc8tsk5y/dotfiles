#!/bin/sh

powermenu() {
    options="Shutdown\nRestart\nSuspend\nLock\nLog out"
    selected=$(echo -e $options |rofi -dmenu -p "⏻ power" -i)
    if [[ $selected == "Shutdown" ]]; then
        systemctl poweroff
    elif [[ $selected == "Restart" ]]; then
        systemctl reboot
    elif [[ $selected == "Suspend" ]]; then
        systemctl suspend
    elif [[ $selected == "Lock" ]]; then
        loginctl lock-session
    elif [[ $selected == "Log out" ]]; then
        hyprctl dispatch exit
    else
        echo "canceled"
    fi
}

powermenu
