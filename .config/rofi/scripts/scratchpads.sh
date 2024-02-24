#!/bin/sh

scratchpads() {
    options="terminal\npavucontrol"
    selected=$(echo -e $options |rofi -dmenu -p "scratchpads" -i)
    if [[ $selected == "terminal" ]]; then
        qtile cmd-obj -o group 0 -f dropdown_toggle -a "term"
    elif [[ $selected == "pavucontrol" ]]; then
        qtile cmd-obj -o group 0 -f dropdown_toggle -a "pavucontrol"
    else
        echo "canceled"
    fi
}

scratchpads
