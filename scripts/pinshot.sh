#!/bin/sh

grimblast save area ~/Downloads/pin.png
if [ -f ~/Downloads/pin.png ]; then
    imv ~/Downloads/pin.png && rm -fr ~/Downloads/pin.png
