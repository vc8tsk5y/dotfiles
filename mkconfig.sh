#!/bin/sh
# keine ahnung ob das so passt
mkdir -p ~/.config/wallpaper &
ln -sf ~/dotfiles/.config/wallpaper/* ~/.config/wallpaper/ &

mkdir -p ~/.config/picom &
ln -sf ~/dotfiles/.config/picom/picom.conf ~/.config/picom/ &

mkdir -p ~/.config/neofetch &
ln -sf ~/dotfiles/.config/neofetch/config.conf ~/.config/neofetch/ &

mkdir -p ~/.config/betterlockscreen &
ln -sf ~/dotfiles/.config/betterlockscreen/betterlockscreenrc ~/.config/betterlockscreen/ &
# abfrage welches wallpaper (man sollte dann den pfad angeben müssen
betterlockscreen -u ~/.config/wallpaper/reine-lofoten.jpg &

ln -sf ~/dotfiles/.config/starship.toml ~/.config/ &

sudo ln -sf ~/dotfiles/root/reflector.conf /etc/xdg/reflector/
