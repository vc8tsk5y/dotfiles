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
        betterlockscreen -l
    elif [[ $selected == "Log out" ]]; then
        qtile cmd-obj -o cmd -f shutdown
    else
        echo "canceled"
    fi
}

powermenu
