#!/bin/sh

grimblast save area ~/.local/share/pin.png
if [ -f ~/.local/share/pin.png ]; then
    hyprctl dispatch exec "[float] imv ~/.local/share/pin.png"
fi
