#!/bin/sh

rofi -show calc -no-show-match -no-sort -no-persist-history -calc-command "echo -n '{result}' | xclip -sel clip"
