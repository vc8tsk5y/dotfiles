# Defaults
export EDITOR="nvim"
export VISUAL="nvim"

# History
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
export HISTORY_IGNORE="(ls*|cd*|pwd*|exit|lsd*)"
setopt appendhistory # ensures history to work with multiple terminals

unsetopt beep

# Path
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.local/bin"

# Aliases
# General aliases
alias grep='grep -i --color=auto'
alias mv='mv -i'
alias cp='cp -i'
alias vim='nvim'
alias lsd='lsd -lhA --group-dirs first --header'

# Custom aliases
alias thm='/home/tim/thm-vpn.sh'
alias wttr2='curl v2d.wttr.in/butzbach'
alias wttrde='curl -H "Accept-Language: de" wttr.in/butzbach'
alias wttrmap='curl v3.wttr.in/Hessen.sxl'
alias kssh='kitty +kitten ssh'

# Plugin Configurations
eval "$(starship init zsh)"
source /usr/share/zsh/plugins/zsh-autopair/autopair.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# https://github.com/marlonrichert/zsh-autocomplete?tab=readme-ov-file#make-tab-go-straight-to-the-menu-and-cycle-there
bindkey '\t' menu-select "$terminfo[kcbt]" menu-select
# bindkey -M menu-select '\t' menu-complete "$terminfo[kcbt]" reverse-menu-complete # the docs says you need this for me it does nothing than throwing an error
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
