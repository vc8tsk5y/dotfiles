#!/bin/sh

everforest() {
    options=("all" "red" "orange" "yellow" "green" "blue" "aqua" "purple" "fg" "bg_dim" "bg0" "bg1" "bg2" "bg3" "bg4" "bg5" "bg_red" "bg_orange" "bg_yellow" "bg_green" "bg_blue" "gray0" "gray1" "gray2")
    declare -i i=0
    selected=$(
        while [ $i -lt ${#options[@]} ]
        do
            echo -en "${options[$i]}\x00icon\x1f~/dotfiles/.config/rofi/scripts/everforest/${options[$i]}.png\n"
            i=$(( $i + 1 ))
        done | rofi -dmenu -p "󱢗 everforest" -i)

    if [[ $selected == "all" ]]; then
        echo -en "\nred #e67e80\norange #e69875\nyellow #dbbc7f\ngreen #a7c080\nblue #7fbbb3\naqua #83c092\npurple #d699b6 \nfg #d3c6aa\nbg_dim #232a2e\nbg0 #2d353b\nbg1 #343f44\nbg2 #3d484d\nbg3 #475258\nbg4 #4f585e\nbg5 #56635f\nbg_red #543a48\nbg_orange #514045\nbg_yellow #4d4c43\nbg_green #425047\nbg_blue #3a515d\ngray0 #7a8478\ngray1 #859289\ngray2 #9da9a0" | wl-copy
    elif [[ $selected == "red" ]]; then
        echo -n e67e80 | wl-copy
    elif [[ $selected == "orange" ]]; then
        echo -n e69875 | wl-copy
    elif [[ $selected == "yellow" ]]; then
        echo -n dbbc7f | wl-copy
    elif [[ $selected == "green" ]]; then
        echo -n a7c080 | wl-copy
    elif [[ $selected == "blue" ]]; then
        echo -n 7fbbb3 | wl-copy
    elif [[ $selected == "aqua" ]]; then
        echo -n 83c092 | wl-copy
    elif [[ $selected == "purple" ]]; then
        echo -n d699b6 | wl-copy
    elif [[ $selected == "fg" ]]; then
        echo -n d3c6aa | wl-copy
    elif [[ $selected == "bg_dim" ]]; then
        echo -n 232a2e | wl-copy
    elif [[ $selected == "bg0" ]]; then
        echo -n 2d353b | wl-copy
    elif [[ $selected == "bg1" ]]; then
        echo -n 343f44 | wl-copy
    elif [[ $selected == "bg2" ]]; then
        echo -n 3d484d | wl-copy
    elif [[ $selected == "bg3" ]]; then
        echo -n 475258 | wl-copy
    elif [[ $selected == "bg4" ]]; then
        echo -n 4f585e | wl-copy
    elif [[ $selected == "bg5" ]]; then
        echo -n 56635f | wl-copy
    elif [[ $selected == "bg_red" ]]; then
        echo -n 543a48 | wl-copy
    elif [[ $selected == "bg_orange" ]]; then
        echo -n 514045 | wl-copy
    elif [[ $selected == "bg_yellow" ]]; then
        echo -n 4d4c43 | wl-copy
    elif [[ $selected == "bg_green" ]]; then
        echo -n 425047 | wl-copy
    elif [[ $selected == "bg_blue" ]]; then
        echo -n 3a515d | wl-copy
    elif [[ $selected == "gray0" ]]; then
        echo -n 7a8478 | wl-copy
    elif [[ $selected == "gray1" ]]; then
        echo -n 859289 | wl-copy
    elif [[ $selected == "gray2" ]]; then
        echo -n 9da9a0 | wl-copy
    else
        echo "canceled"
    fi
}

everforest
