#!/bin/sh

everblush() {
    options=("all" "Background0 #141b1e rgb(20, 27, 30)" "Background1 #232a2d rgb(35, 42, 45)" "Red #e57474 rgb(229, 116, 116)" "Green #8ccf7e rgb(140, 207, 126)" "Yellow #e5c76b rgb(229, 199, 107)" "Blue #67b0e8 rgb(103, 176, 232)" "Magenta #c47fd5 rgb(196, 127, 213)" "Cyan #6cbfbf rgb(108, 191, 191)" "White0 #dadada rgb(218, 218, 218)" "White1 #b3b9b8 rgb(179, 185, 184)")
    declare -i i=0
    selected=$(
        while [ $i -lt ${#options[@]} ]
        do
            echo -en "${options[$i]}\x00icon\x1f~/dotfiles/.config/rofi/scripts/everblush/${options[$i]}.png\n"
            i=$(( $i + 1 ))
        done | rofi -dmenu -p " everblush" -i)

    if [[ $selected == "all" ]]; then
        echo -en "Background0 #141b1e rgb(20, 27, 30)\nBackground1 #232a2d rgb(35, 42, 45)\nRed #e57474 rgb(229, 116, 116)\nGreen #8ccf7e rgb(140, 207, 126)\nYellow #e5c76b rgb(229, 199, 107)\nBlue #67b0e8 rgb(103, 176, 232)\nMagenta #c47fd5 rgb(196, 127, 213)\nCyan #6cbfbf rgb(108, 191, 191)\nWhite0 #dadada rgb(218, 218, 218)\nWhite1 #b3b9b8 rgb(179, 185, 184)" | wl-copy
    elif [[ $selected == "Background0 #141b1e rgb(20, 27, 30)" ]]; then
        echo -n 141b1e | wl-copy
    elif [[ $selected == "Background1 #232a2d rgb(35, 42, 45)" ]]; then
        echo -n 232a2d | wl-copy
    elif [[ $selected == "Red #e57474 rgb(229, 116, 116)" ]]; then
        echo -n e57474 | wl-copy
    elif [[ $selected == "Green #8ccf7e rgb(140, 207, 126)" ]]; then
        echo -n 8ccf7e | wl-copy
    elif [[ $selected == "Yellow #e5c76b rgb(229, 199, 107)" ]]; then
        echo -n e5c76b | wl-copy
    elif [[ $selected == "Blue #67b0e8 rgb(103, 176, 232)" ]]; then
        echo -n 67b0e8 | wl-copy
    elif [[ $selected == "Magenta #c47fd5 rgb(196, 127, 213)" ]]; then
        echo -n c47fd5 | wl-copy
    elif [[ $selected == "Cyan #6cbfbf rgb(108, 191, 191)" ]]; then
        echo -n 6cbfbf | wl-copy
    elif [[ $selected == "White0 #dadada rgb(218, 218, 218)" ]]; then
        echo -n dadada | wl-copy
    elif [[ $selected == "White1 #b3b9b8 rgb(179, 185, 184)" ]]; then
        echo -n b3b9b8 | wl-copy
    else
        echo "canceled"
    fi
}

everblush
