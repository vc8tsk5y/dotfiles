#!/bin/sh

everblush() {
    options=("all" "background0-#141b1e" "background1-#232a2d" "background2-#2d3437" "red-#e57474" "green-#8ccf7e" "yellow-#e5c76b" "blue-#67b0e8" "magenta-#c47fd5" "cyan-#6cbfbf" "white0-#dadada" "white1-#b3b9b8" "white2-#8e979a")
    declare -i i=0
    selected=$(
        while [ $i -lt ${#options[@]} ]
        do
            echo -en "${options[$i]}\x00icon\x1f~/dotfiles/.config/rofi/scripts/everblush/${options[$i]}.png\n"
            i=$(( $i + 1 ))
        done | rofi -dmenu -p " everblush" -i)

    if [[ $selected == "all" ]]; then
        echo -en "background0-#141b1e\nbackground1-#232a2d\nbackground2-#2d3437\nred-#e57474\ngreen-#8ccf7e\nyellow-#e5c76b\nblue-#67b0e8\nmagenta-#c47fd5\ncyan-#6cbfbf\nwhite0-#dadada\nwhite1-#b3b9b8\nwhite2-#8e979a" | wl-copy
    elif [[ $selected == "background0-#141b1e" ]]; then
        echo -n 141b1e | wl-copy
    elif [[ $selected == "background1-#232a2d" ]]; then
        echo -n 232a2d | wl-copy
    elif [[ $selected == "background2-#2d3437" ]]; then
        echo -n 2d3437 | wl-copy
    elif [[ $selected == "red-#e57474" ]]; then
        echo -n e57474 | wl-copy
    elif [[ $selected == "green-#8ccf7e" ]]; then
        echo -n 8ccf7e | wl-copy
    elif [[ $selected == "yellow-#e5c76b" ]]; then
        echo -n e5c76b | wl-copy
    elif [[ $selected == "blue-#67b0e8" ]]; then
        echo -n 67b0e8 | wl-copy
    elif [[ $selected == "magenta-#c47fd5" ]]; then
        echo -n c47fd5 | wl-copy
    elif [[ $selected == "cyan-#6cbfbf" ]]; then
        echo -n 6cbfbf | wl-copy
    elif [[ $selected == "white0-#dadada" ]]; then
        echo -n dadada | wl-copy
    elif [[ $selected == "white1-#b3b9b8" ]]; then
        echo -n b3b9b8 | wl-copy
    elif [[ $selected == "white2-#8e979a" ]]; then
        echo -n 8e979a | wl-copy
    else
        echo "canceled"
    fi
}

everblush
