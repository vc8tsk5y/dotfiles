# dotfiles

### reflector
```bash
sudo cp ~/dotfiles/root/reflector.conf /etc/xdg/reflector/

sudo systemctl enable reflector.service --now
```


### .zshrc
```bash
chsh -s /usr/bin/zsh
sudo chsh -s /usr/bin/zsh

ln -sf ~/dotfiles/.zshrc ~/
```


### starship
```bash
ln -sf ~/dotfiles/.config/starship.toml ~/.config/
```


### fastfetch
```bash
mkdir -p ~/.config/fastfetch &
ln -sf ~/dotfiles/.config/fastfetch/config.jsonc ~/.config/fastfetch/
```


### hyprland & hyprpaper hypridle hyprlock
```bash
mkdir -p ~/.config/hypr &
ln -sf ~/dotfiles/.config/hypr/*.conf ~/.config/hypr/
```


### waybar
```bash
mkdir -p ~/.config/waybar &
ln -sf ~/dotfiles/.config/waybar/config.jsonc ~/.config/waybar/
ln -sf ~/dotfiles/.config/waybar/style.css ~/.config/waybar/
```


### swaync (notification daemon and center)
```bash
mkdir -p ~/.config/swaync &
ln -sf ~/dotfiles/.config/swaync/* ~/.config/swaync/
```


### kitty
```bash
mkdir -p ~/.config/kitty/themes &
ln -sf ~/dotfiles/.config/kitty/* ~/.config/kitty/ &
ln -sf ~/dotfiles/.config/kitty/themes/* ~/.config/kitty/themes/
```


### rofi
```bash
mkdir -p ~/.config/rofi
ln -sf ~/dotfiles/.config/rofi/*.rasi ~/.config/rofi/
```


### Battery optimisation with TLP
[Youtube video explains!](https://www.youtube.com/watch?v=GDdGK8Z_qzs)
[das auch sehr wichtig](https://wiki.archlinux.org/title/TLP)

```bash
sudo ln -sf ~/dotfiles/root/tlp.conf /etc/
sudo tlp start
```
important: follow suggestings from error messages


## some other shit

### mimetypes

```bash
ln -sf ~/dotfiles/.config/mimeapps.list ~/.config/
ln -sf ~/dotfiles/.config/mimeapps.list ~/.local/share/applications/
```


### crontab for trash

cronie
```bash
crontab -e
```
add line after command above
```bash
@daily /usr/bin/trash-empty 30
```


### startx on login

add lines to the end in /etc/zsh/zprofile

```bash
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec Hyprland
fi
```


### qt theme

needed qt6ct qt5ct also possible
```bash
mkdir ~/.config/qt6ct/colors &
ln -sf ~/dotfiles/.config/qt6ct/colors/everblush.conf ~/.config/qt6ct/colors/
```
now open qt6ct and apply settings


### Maintainance!

```bash
pacman -Syyu
paru  -Syyu
pacman -Qdtq | sudo pacman -Rsn -
paccache -dvk2
paccache -rvk2
paccache -duvk0
paccache -ruvk0
pacman -Sccd
paru -Sccd
# flatpak 
flatpak update 
# nvim 
Lazy
```
