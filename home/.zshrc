[ -f "$HOME/.local/share/zap/zap.zsh" ] && source "$HOME/.local/share/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zsh-users/zsh-syntax-highlighting"
plug "hlissner/zsh-autopair"
plug "zsh-users/zsh-history-substring-search"

# starship
eval "$(starship init zsh)"

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
export HISTORY_IGNORE="(ls*|cd*|pwd*|exit|lsd*)"

unsetopt beep

# vi mode
bindkey -v

# path
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.local/bin"

# alias
alias rm="echo 'use \\\\rm or trash'; false"
alias grep='grep -i --color=auto'
alias mv='mv -i'
alias cp='cp -i'
alias vim='nvim'
alias lsd='lsd -lhA --group-dirs first --header'

alias thm='/home/tim/thm-vpn.sh'
alias wttr2='curl v2d.wttr.in/butzbach'
alias wttrde='curl -H "Accept-Language: de" wttr.in/butzbach'
alias wttrmap='curl v3.wttr.in/Hessen.sxl'
# kitty specific alias
alias kssh='kitty +kitten ssh'

# defaults
export EDITOR=nvim
export VISUAL=nvim
