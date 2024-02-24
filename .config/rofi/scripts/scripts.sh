#!/bin/sh

scripts() {
    options=" apps\n⏻ power\n󰪚 calc\n󰅍 clipboard\n emoji\n󱢗 everforest\n󰄛 catppuccin mocha"
    selected=$(echo -e $options |rofi -dmenu -p "Scripts" -i)

    if [[ $selected == " apps" ]]; then
        rofi -show drun
    elif [[ $selected == "⏻ power" ]]; then
        /home/tim/dotfiles/.config/rofi/scripts/power-menu.sh
    elif [[ $selected == "󰪚 calc" ]]; then
        /home/tim/dotfiles/.config/rofi/scripts/calc.sh
    elif [[ $selected == "󰅍 clipboard" ]]; then
        /home/tim/dotfiles/.config/rofi/scripts/greenclip.sh
    elif [[ $selected == " emoji" ]]; then
        rofi -show emoji
    elif [[ $selected == "󱢗 everforest" ]]; then
        /home/tim/dotfiles/.config/rofi/scripts/everforest.sh
    elif [[ $selected == "󰄛 catppuccin mocha" ]]; then
        /home/tim/dotfiles/.config/rofi/scripts/catppuccin-mocha.sh
    else
        echo "canceled"
    fi
}

scripts
