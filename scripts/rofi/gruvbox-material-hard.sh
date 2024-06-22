#!/bin/sh

gruvboxMaterialHard() {
    options=("all" "bg-dim #141617" "bg0 #1d2021" "bg1 #282828" "bg2 #3c3836" "bg3 #504945" "grey0 #7c6f64" "grey1 #928374" "grey2 #a89984" "fg0 #d4be98" "fg1 #ddc7a1" "red #ea6962" "orange #e78a4e" "yellow #d8a657" "green #a9b665" "aqua #89b482" "blue #7daea3" "purple #d3869b" "red-dim #3c1f1e" "green-dim #32361a" "blue-dim #0d3138" "red-bg #442e2d" "yellow-bg #473c29" "green-bg #333e34" "blue-bg #2e3b3b")
    declare -i i=0
    selected=$(
        while [ $i -lt ${#options[@]} ]
        do
            echo -en "${options[$i]}\x00icon\x1f~/dotfiles/scripts/rofi/gruvbox-material-hard/${options[$i]}.png\n"
            i=$(( $i + 1 ))
        done | rofi -dmenu -p " gruvbox material hard" -i)

    if [[ $selected == "all" ]]; then
        echo -en "bg-dim #141617\nbg0 #1d2021\nbg1 #282828\nbg2 #3c3836\nbg3 #504945\ngrey0 #7c6f64\ngrey1 #928374\ngrey2 #a89984\nfg0 #d4be98\nfg1 #ddc7a1\nred #ea6962\norange #e78a4e\nyellow #d8a657\ngreen #a9b665\naqua #89b482\nblue #7daea3\npurple #d3869b\nred-dim #3c1f1e\ngreen-dim #32361a\nblue-dim #0d3138\nred-bg #442e2d\nyellow-bg #473c29\ngreen-bg #333e34\nblue-bg #2e3b3b" | wl-copy
    elif [[ $selected == "bg-dim #141617" ]]; then
        echo -n 141617 | wl-copy
    elif [[ $selected == "bg0 #1d2021" ]]; then
        echo -n 1d2021 | wl-copy
    elif [[ $selected == "bg1 #282828" ]]; then
        echo -n 282828 | wl-copy
    elif [[ $selected == "bg2 #3c3836" ]]; then
        echo -n 3c3836 | wl-copy
    elif [[ $selected == "bg3 #504945" ]]; then
        echo -n 504945 | wl-copy
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
    elif [[ $selected == "red-dim #3c1f1e" ]]; then
        echo -n 3c1f1e | wl-copy
    elif [[ $selected == "green-dim #32361a" ]]; then
        echo -n 32361a | wl-copy
    elif [[ $selected == "blue-dim #0d3138" ]]; then
        echo -n 0d3138 | wl-copy
    elif [[ $selected == "red-bg #442e2d" ]]; then
        echo -n 442e2d | wl-copy
    elif [[ $selected == "yellow-bg #473c29" ]]; then
        echo -n 473c29 | wl-copy
    elif [[ $selected == "green-bg #333e34" ]]; then
        echo -n 333e34 | wl-copy
    elif [[ $selected == "blue-bg #2e3b3b" ]]; then
        echo -n 2e3b3b | wl-copy
    else
        echo "canceled"
    fi
}

gruvboxMaterialHard
