#!/bin/sh

gruvboxMaterial() {
    options=("all" "bgDim #1b1b1b" "bg0 #282828" "bg1 #32302f" "bg2 #45403d" "bg3 #5a524c" "grey0 #7c6f64" "grey1 #928374" "grey2 #a89984" "fg0 #d4be98" "fg1 #ddc7a1" "red #ea6962" "orange #e78a4e" "yellow #d8a657" "green #a9b665" "aqua #89b482" "blue #7daea3" "purple #d3869b" "redDim #402120" "greenDim #34381b" "blueDim #0e363e" "redBg #4c3432" "yellowBg #4f422e" "greenBg #3b4439" "blueBg #374141")
    declare -i i=0
    selected=$(
        while [ $i -lt ${#options[@]} ]
        do
            echo -en "${options[$i]}\x00icon\x1f~/dotfiles/scripts/rofi/gruvbox-material/${options[$i]}.png\n"
            i=$(( $i + 1 ))
        done | rofi -dmenu -p " gruvbox material" -i)

    if [[ $selected == "all" ]]; then
        echo -en "bgDim #1b1b1b\nbg0 #282828\nbg1 #32302f\nbg2 #45403d\nbg3 #5a524c\ngrey0 #7c6f64\ngrey1 #928374\ngrey2 #a89984\nfg0 #d4be98\nfg1 #ddc7a1\nred #ea6962\norange #e78a4e\nyellow #d8a657\ngreen #a9b665\naqua #89b482\nblue #7daea3\npurple #d3869b\nredDim #402120\ngreenDim #34381b\nblueDim #0e363e\nredBg #4c3432\nyellowBg #4f422e\ngreenBg #3b4439\nblueBg #374141\n" | wl-copy
    elif [[ $selected == "bgDim #1b1b1b" ]]; then
        echo -n 1b1b1b | wl-copy
    elif [[ $selected == "bg0 #282828" ]]; then
        echo -n 282828 | wl-copy
    elif [[ $selected == "bg1 #32302f" ]]; then
        echo -n 32302f | wl-copy
    elif [[ $selected == "bg2 #45403d" ]]; then
        echo -n 45403d | wl-copy
    elif [[ $selected == "bg3 #5a524c" ]]; then
        echo -n 5a524c | wl-copy
    elif [[ $selected == "grey0 #7c6f64" ]]; then
        echo -n 7c6f64 | wl-copy
    elif [[ $selected == "grey1 #928374" ]]; then
        echo -n 928374 | wl-copy
    elif [[ $selected == "grey2 #a89984" ]]; then
        echo -n a89984 | wl-copy
    elif [[ $selected == "fg0 #d4be98" ]]; then
        echo -n d4be98 | wl-copy
    elif [[ $selected == "fg1 #ddc7a1" ]]; then
        echo -n ddc7a1 | wl-copy
    elif [[ $selected == "red #ea6962" ]]; then
        echo -n ea6962 | wl-copy
    elif [[ $selected == "orange #e78a4e" ]]; then
        echo -n e78a4e | wl-copy
    elif [[ $selected == "yellow #d8a657" ]]; then
        echo -n d8a657 | wl-copy
    elif [[ $selected == "green #a9b665" ]]; then
        echo -n a9b665 | wl-copy
    elif [[ $selected == "aqua #89b482" ]]; then
        echo -n 89b482 | wl-copy
    elif [[ $selected == "blue #7daea3" ]]; then
        echo -n 7daea3 | wl-copy
    elif [[ $selected == "purple #d3869b" ]]; then
        echo -n d3869b | wl-copy
    elif [[ $selected == "redDim #402120" ]]; then
        echo -n 402120 | wl-copy
    elif [[ $selected == "greenDim #34381b" ]]; then
        echo -n 34381b | wl-copy
    elif [[ $selected == "blueDim #0e363e" ]]; then
        echo -n 0e363e | wl-copy
    elif [[ $selected == "redBg #4c3432" ]]; then
        echo -n 4c3432 | wl-copy
    elif [[ $selected == "yellowBg #4f422e" ]]; then
        echo -n 4f422e | wl-copy
    elif [[ $selected == "greenBg #3b4439" ]]; then
        echo -n 3b4439 | wl-copy
    elif [[ $selected == "blueBg #374141" ]]; then
        echo -n 374141 | wl-copy
    else
        echo "canceled"
    fi
}

gruvboxMaterial
