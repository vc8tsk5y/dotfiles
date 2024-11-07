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
ln -sf ~/dotfiles/.zprofile ~/
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


### hyprland, autostart, hyprpaper, hypridle, hyprlock
```bash
mkdir -p ~/.config/hypr &
ln -sf ~/dotfiles/.config/hypr/* ~/.config/hypr/
```


### rofi
```bash
mkdir -p ~/.config/rofi
ln -sf ~/dotfiles/.config/rofi/*.rasi ~/.config/rofi/
```


### kitty
```bash
mkdir -p ~/.config/kitty/themes &
ln -sf ~/dotfiles/.config/kitty/* ~/.config/kitty/ &
ln -sf ~/dotfiles/.config/kitty/themes/* ~/.config/kitty/themes/
```


### waybar
```bash
mkdir -p ~/.config/waybar &
ln -sf ~/dotfiles/.config/waybar/config.jsonc ~/.config/waybar/
ln -sf ~/dotfiles/.config/waybar/style.css ~/.config/waybar/
```


### swaync
```bash
mkdir -p ~/.config/swaync &
ln -sf ~/dotfiles/.config/swaync/* ~/.config/swaync/
```


### mimetypes

```bash
ln -sf ~/dotfiles/.config/mimeapps.list ~/.config/
ln -sf ~/dotfiles/.config/mimeapps.list ~/.local/share/applications/
```


### crontab for trash

```bash
crontab -e
```
add line after command above
```bash
@daily /usr/bin/trash-empty 30
```


### compile with all threads
/etc/makepkg.conf\
search MAKEFLAGS & set to:
```
MAKEFLAGS="-j$(nproc)"
```


# Maintainance!

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


# laptop only

### Battery optimisation with TLP
[Youtube video explains!](https://www.youtube.com/watch?v=GDdGK8Z_qzs)\
[das auch sehr wichtig](https://wiki.archlinux.org/title/TLP)

```bash
sudo ln -sf ~/dotfiles/root/tlp.conf /etc/
sudo tlp start
```
important: follow suggestings from error messages


# depricated


### ~~ags~~
```bash
ags --init
ln -sf ~/dotfiles/.config/ags/* ~/.config/ags/
```


### ~~bash~~
```bash
ln -sf ~/dotfiles/.bashrc ~/
ln -sf ~/dotfiles/.bash_profile ~/
```


### ~~fish~~
```bash
mkdir -p ~/.config/fish/functions &
ln -sf ~/dotfiles/.config/fish/* ~/.config/fish/
ln -sf ~/dotfiles/.config/fish/functions/* ~/.config/fish/functions/
```


### ~~foot~~
```bash
mkdir -p ~/.config/foot &
ln -sf ~/dotfiles/.config/foot/* ~/.config/foot/
```


### ~~gtk theme~~
[github](https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme) with install instructions (aur package is trash)
for install script use this command
```bash
mkdir ~/.themes &
./install.sh -l -t all
```


### ~~qt theme~~

needed qt6ct qt5ct also possible
```bash
mkdir ~/.config/qt6ct/colors &
ln -sf ~/dotfiles/.config/qt6ct/colors/*.conf ~/.config/qt6ct/colors/
```
now open qt6ct and apply settings
