#!/bin/sh

scripts() {
    options=" apps\n⏻ power\n󰅍 cliphist\n emoji\n󱢗 everforest\n󰄛 catppuccin mocha" selected=$(echo -e $options |rofi -dmenu -p "Scripts" -i)

    if [[ $selected == " apps" ]]; then
        rofi -show drun
    elif [[ $selected == "⏻ power" ]]; then
        /home/tim/dotfiles/.config/rofi/scripts/power-menu.sh
    elif [[ $selected == "󰅍 cliphist" ]]; then
        cliphist list | rofi -dmenu | cliphist decode | wl-copy
    elif [[ $selected == " emoji" ]]; then
        rofimoji -a clipboard
    elif [[ $selected == "󱢗 everforest" ]]; then
        /home/tim/dotfiles/.config/rofi/scripts/everforest.sh
    elif [[ $selected == "󰄛 catppuccin mocha" ]]; then
        /home/tim/dotfiles/.config/rofi/scripts/catppuccin-mocha.sh
    else
        echo "canceled"
    fi
}

scripts
