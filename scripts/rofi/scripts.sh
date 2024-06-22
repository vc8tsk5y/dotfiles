#!/bin/sh

scripts() {
    options=" apps\n⏻ power\n󰅍 cliphist\n emoji\n gruvbox material hard\n everblush\n󱢗 everforest\n󰄛 catppuccin mocha" selected=$(echo -e $options |rofi -dmenu -p "Scripts" -i)

    if [[ $selected == " apps" ]]; then
        rofi -show drun
    elif [[ $selected == "⏻ power" ]]; then
        /home/tim/dotfiles/scripts/rofi/power-menu.sh
    elif [[ $selected == "󰅍 cliphist" ]]; then
        cliphist list | rofi -dmenu | cliphist decode | wl-copy
    elif [[ $selected == " emoji" ]]; then
        rofimoji -a clipboard
    elif [[ $selected == " gruvbox material hard" ]]; then
        ~/dotfiles/scripts/rofi/gruvbox-material-hard.sh
    elif [[ $selected == " everblush" ]]; then
        /home/tim/dotfiles/scripts/rofi/everblush.sh
    elif [[ $selected == "󱢗 everforest" ]]; then
        /home/tim/dotfiles/scripts/rofi/everforest.sh
    elif [[ $selected == "󰄛 catppuccin mocha" ]]; then
        /home/tim/dotfiles/scripts/rofi/catppuccin-mocha.sh
    else
        echo "canceled"
    fi
}

scripts
