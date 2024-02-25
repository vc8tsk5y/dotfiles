# dotfiles

## symlinks

### wallpaper
```bash
mkdir -p ~/.config/wallpaper &
ln -sf ~/dotfiles/wallpaper/* ~/.config/wallpaper/
```

### qtile
```bash
mkdir -p ~/.config/qtile &
ln -sf ~/dotfiles/.config/qtile/*.py ~/.config/qtile/ 
```

### dunst
```bash
mkdir -p ~/.config/dunst &
ln -sf ~/dotfiles/.config/dunst/dunstrc ~/.config/dunst/
```

### kitty
```bash
mkdir -p ~/.config/kitty &
ln -sf ~/dotfiles/.config/kitty/* ~/.config/kitty/
```

### rofi
```bash
mkdir -p ~/.config/rofi
ln -sf ~/dotfiles/.config/rofi/*.rasi ~/.config/rofi/
```

### picom
```bash
mkdir -p ~/.config/picom &
ln -sf ~/dotfiles/.config/picom/picom.conf ~/.config/picom/
```

### neofetch
```bash
mkdir -p ~/.config/neofetch &
ln -sf ~/dotfiles/.config/neofetch/config.conf ~/.config/neofetch/
```

### betterlockscreen
```bash
mkdir -p ~/.config/betterlockscreen &
ln -sf ~/dotfiles/.config/betterlockscreen/betterlockscreenrc ~/.config/betterlockscreen/ &
betterlockscreen -u ~/.config/wallpaper/reine-lofoten.jpg # can be swapped for some other wallpaper
```

### starship
```bash
ln -sf ~/dotfiles/.config/starship.toml ~/.config/
```

### .zshrc
```bash
ln -sf ~/dotfiles/home/.zshrc ~/
```

### .xinitrc
```bash
ln -sf ~/dotfiles/home/.xinitrc-desktop ~/.xinitrc
```

### .Xresources
```bash
ln -sf ~/dotfiles/home/.Xresources ~/
```

### keyboardlayout
```bash
sudo ln -sf ~/dotfiles/root/00-keyboard.conf-desktop /etc/X11/xorg.conf.d/00-keyboard.conf
```

### reflector 
```bash
sudo ln -sf ~/dotfiles/root/reflector.conf /etc/xdg/reflector/
```

### Battery optimisation
[Youtube video explains!](https://www.youtube.com/watch?v=GDdGK8Z_qzs)

## some other shit

### mimetypes

```bash
ln -sf ~/dotfiles/.config/mimeapps.list ~/.config/
ln -sf ~/dotfiles/.config/mimeapps.list ~/.local/share/applications/
```

### grub

zwei coole optionen einmal mc world selection und mc main menu

[minegrub world sel theme](https://github.com/Lxtharia/minegrub-world-sel-theme)
[minegrubtheme](https://github.com/Lxtharia/minegrub-theme)

 \+ change this line in /etc/default/grub to show other os in grub
```bash
GRUB_DISABLE_OS_PROBER=false
```

### startx on login

add lines to the end in /etc/zsh/zprofile

```bash
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
    exec startx
fi
```

### gtk theme

install the theme 

```bash
paru everforest-gtk-theme-git

ln -sf /usr/share/themes/Everforest-Dark-Borderless/gtk-4.0/assets ~/.config/gtk-4.0/
ln -sf /usr/share/themes/Everforest-Dark-Borderless/gtk-4.0/gtk.css ~/.config/gtk-4.0/
ln -sf /usr/share/themes/Everforest-Dark-Borderless/gtk-4.0/gtk-dark.css ~/.config/gtk-4.0/

# weiß nicht ob das auch also symlink funktioniert wenn nicht einfach "ln -sf" durch "cp -r" ersetzen aber sollte passen
ln -sf /usr/share/themes/Everforest-Dark-Borderless ~/.themes/
```
apply the themes in the gtk settings

```bash
ln -sf ~/dotfiles/.config/gtk-3.0/settings.ini ~/.config/gtk-3.0
```

### mic settings

set default audio device
```bash
pactl list sources short
```
use your own id instead of 58
```bash
pactl set-default-source 58
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

### reflector
```bash
systemctl enable reflector.service --now
```

[arch wiki](https://wiki.archlinux.org/title/reflector)

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
# zsh
zap update all
# flatpak 
flatpak update 
# nvim 
Lazy sync
```






## Getting started

To make it easy for you to get started with GitLab, here's a list of recommended next steps.

Already a pro? Just edit this README.md and make it your own. Want to make it easy? [Use the template at the bottom](#editing-this-readme)!

## Add your files

- [ ] [Create](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#create-a-file) or [upload](https://docs.gitlab.com/ee/user/project/repository/web_editor.html#upload-a-file) files
- [ ] [Add files using the command line](https://docs.gitlab.com/ee/gitlab-basics/add-file.html#add-a-file-using-the-command-line) or push an existing Git repository with the following command:

```
cd existing_repo
git remote add origin https://git.thm.de/tzmr78/dotfiles.git
git branch -M master
git push -uf origin master
```

## Integrate with your tools

- [ ] [Set up project integrations](https://git.thm.de/tzmr78/dotfiles/-/settings/integrations)

## Collaborate with your team

- [ ] [Invite team members and collaborators](https://docs.gitlab.com/ee/user/project/members/)
- [ ] [Create a new merge request](https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html)
- [ ] [Automatically close issues from merge requests](https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#closing-issues-automatically)
- [ ] [Enable merge request approvals](https://docs.gitlab.com/ee/user/project/merge_requests/approvals/)
- [ ] [Automatically merge when pipeline succeeds](https://docs.gitlab.com/ee/user/project/merge_requests/merge_when_pipeline_succeeds.html)

## Test and Deploy

Use the built-in continuous integration in GitLab.

- [ ] [Get started with GitLab CI/CD](https://docs.gitlab.com/ee/ci/quick_start/index.html)
- [ ] [Analyze your code for known vulnerabilities with Static Application Security Testing(SAST)](https://docs.gitlab.com/ee/user/application_security/sast/)
- [ ] [Deploy to Kubernetes, Amazon EC2, or Amazon ECS using Auto Deploy](https://docs.gitlab.com/ee/topics/autodevops/requirements.html)
- [ ] [Use pull-based deployments for improved Kubernetes management](https://docs.gitlab.com/ee/user/clusters/agent/)
- [ ] [Set up protected environments](https://docs.gitlab.com/ee/ci/environments/protected_environments.html)

***

# Editing this README

When you're ready to make this README your own, just edit this file and use the handy template below (or feel free to structure it however you want - this is just a starting point!). Thank you to [makeareadme.com](https://www.makeareadme.com/) for this template.

## Suggestions for a good README
Every project is different, so consider which of these sections apply to yours. The sections used in the template are suggestions for most open source projects. Also keep in mind that while a README can be too long and detailed, too long is better than too short. If you think your README is too long, consider utilizing another form of documentation rather than cutting out information.

## Name
Choose a self-explaining name for your project.

## Description
Let people know what your project can do specifically. Provide context and add a link to any reference visitors might be unfamiliar with. A list of Features or a Background subsection can also be added here. If there are alternatives to your project, this is a good place to list differentiating factors.

## Badges
On some READMEs, you may see small images that convey metadata, such as whether or not all the tests are passing for the project. You can use Shields to add some to your README. Many services also have instructions for adding a badge.

## Visuals
Depending on what you are making, it can be a good idea to include screenshots or even a video (you'll frequently see GIFs rather than actual videos). Tools like ttygif can help, but check out Asciinema for a more sophisticated method.

## Installation
Within a particular ecosystem, there may be a common way of installing things, such as using Yarn, NuGet, or Homebrew. However, consider the possibility that whoever is reading your README is a novice and would like more guidance. Listing specific steps helps remove ambiguity and gets people to using your project as quickly as possible. If it only runs in a specific context like a particular programming language version or operating system or has dependencies that have to be installed manually, also add a Requirements subsection.

## Usage
Use examples liberally, and show the expected output if you can. It's helpful to have inline the smallest example of usage that you can demonstrate, while providing links to more sophisticated examples if they are too long to reasonably include in the README.

## Support
Tell people where they can go to for help. It can be any combination of an issue tracker, a chat room, an email address, etc.

## Roadmap
If you have ideas for releases in the future, it is a good idea to list them in the README.

## Contributing
State if you are open to contributions and what your requirements are for accepting them.

For people who want to make changes to your project, it's helpful to have some documentation on how to get started. Perhaps there is a script that they should run or some environment variables that they need to set. Make these steps explicit. These instructions could also be useful to your future self.

You can also document commands to lint the code or run tests. These steps help to ensure high code quality and reduce the likelihood that the changes inadvertently break something. Having instructions for running tests is especially helpful if it requires external setup, such as starting a Selenium server for testing in a browser.

## Authors and acknowledgment
Show your appreciation to those who have contributed to the project.

## License
For open source projects, say how it is licensed.

## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.