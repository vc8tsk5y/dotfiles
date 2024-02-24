#!/bin/sh

catppuccinMocha() {
    options=("all" "rosewater" "flamingo" "pink" "mauve" "red" "maroon" "peach" "yellow" "green" "teal" "sky" "sapphire" "blue" "lavender" "text" "subtext1" "subtext0" "overlay2" "overlay1" "overlay0" "surface2" "surface1" "surface0" "base" "mantle" "crust")
    declare -i i=0
    selected=$(
        while [ $i -lt ${#options[@]} ]
        do
            echo -en "${options[$i]}\x00icon\x1f~/dotfiles/.config/rofi/scripts/catppuccin-mocha/${options[$i]}.png\n"
            i=$(( $i + 1 ))
        done | rofi -dmenu -p "󰄛 catppuccin mocha" -i)

    if [[ $selected == "all" ]]; then
        echo -en "\nrosewater #f5e0dc\nflamingo #f2cdcd\npink #f5c2e7\nmauve #cba6f7\nred #f38ba8\nmaroon #eba0ac\npeach #fab387\nyellow #f9e2af\ngreen #a6e3a1\nteal #94e2d5\nsky #89dceb\nsapphire #74c7ec\nblue #89b4fa\nlavender #b4befe\ntext #cdd6f4\nsubtext1 #bac2de\nsubtext0 #a6adc8\noverlay2 #9399b2\noverlay1 #7f849c\noverlay0 #6c7086\nsurface2 #585b70\nsurface1 #45475a\nsurface0 #313244\nbase #1e1e2e\nmantle #181825\ncrust #11111b" | xclip -sel clip
    elif [[ $selected == "rosewater" ]]; then
        echo -n f5e0dc | xclip -sel clip
    elif [[ $selected == "flamingo" ]]; then
        echo -n f2cdcd | xclip -sel clip
    elif [[ $selected == "pink" ]]; then
        echo -n f5c2e7 | xclip -sel clip
    elif [[ $selected == "mauve" ]]; then
        echo -n cba6f7 | xclip -sel clip
    elif [[ $selected == "red" ]]; then
        echo -n f38ba8 | xclip -sel clip
    elif [[ $selected == "maroon" ]]; then
        echo -n eba0ac | xclip -sel clip
    elif [[ $selected == "peach" ]]; then
        echo -n fab387 | xclip -sel clip
    elif [[ $selected == "yellow" ]]; then
        echo -n f9e2af | xclip -sel clip
    elif [[ $selected == "green" ]]; then
        echo -n a6e3a1 | xclip -sel clip
    elif [[ $selected == "teal" ]]; then
        echo -n 94e2d5 | xclip -sel clip
    elif [[ $selected == "sky" ]]; then
        echo -n 89dceb | xclip -sel clip
    elif [[ $selected == "sapphire" ]]; then
        echo -n 74c7ec | xclip -sel clip
    elif [[ $selected == "blue" ]]; then
        echo -n 89b4fa | xclip -sel clip
    elif [[ $selected == "lavender" ]]; then
        echo -n b4befe | xclip -sel clip
    elif [[ $selected == "text" ]]; then
        echo -n cdd6f4 | xclip -sel clip
    elif [[ $selected == "subtext1" ]]; then
        echo -n bac2de | xclip -sel clip
    elif [[ $selected == "subtext0" ]]; then
        echo -n a6adc8 | xclip -sel clip
    elif [[ $selected == "overlay2" ]]; then
        echo -n 9399b2 | xclip -sel clip
    elif [[ $selected == "overlay1" ]]; then
        echo -n 7f849c | xclip -sel clip
    elif [[ $selected == "overlay0" ]]; then
        echo -n 6c7086 | xclip -sel clip
    elif [[ $selected == "surface2" ]]; then
        echo -n 585b70 | xclip -sel clip
    elif [[ $selected == "surface1" ]]; then
        echo -n 45475a | xclip -sel clip
    elif [[ $selected == "surface0" ]]; then
        echo -n 313244 | xclip -sel clip
    elif [[ $selected == "base" ]]; then
        echo -n 1e1e2e | xclip -sel clip
    elif [[ $selected == "mantle" ]]; then
        echo -n 181825 | xclip -sel clip
    elif [[ $selected == "crust" ]]; then
        echo -n 11111b | xclip -sel clip
    else
        echo "canceled"
    fi
}

catppuccinMocha
