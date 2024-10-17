# History
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=$HISTSIZE
HISTDUP=erase
export HISTORY_IGNORE="(ls*|cd*|pwd*|exit|ls*)"
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Path
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/.local/bin"

unsetopt beep

# Enable command auto-completion
# autoload -Uz compinit
# compinit

# Plugins and Configurations
source /usr/share/zsh/plugins/fzf-tab-git/fzf-tab.plugin.zsh

source /usr/share/zsh/plugins/zsh-autopair/autopair.zsh

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source /usr/share/zsh/plugins/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# yazi shell wrapper
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

# shell integrations
eval "$(starship init zsh)"
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"  # change command (zoxide init --cmd cd zsh)

# fzf-tab config
# disable sort when completing `git checkout`
zstyle ':completion:*:git-checkout:*' sort false
# set descriptions format to enable group support
# NOTE: don't use escape sequences here, fzf-tab will ignore them
zstyle ':completion:*:descriptions' format '[%d]'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
zstyle ':completion:*' menu no
# preview directory's content with lsd when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'lsd -1A --color=always $realpath'
#zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
# switch group using `<` and `>`
zstyle ':fzf-tab:*' switch-group '<' '>'
# for the usage in tmux
zstyle ':fzf-tab:*' fzf-command ftb-tmux-popup
# completions show hidden files
setopt globdots

# Aliases
# General aliases
alias grep='grep -i --color=auto'
alias mv='mv -i'
alias cp='cp -i'
alias vi='nvim'
alias ls='lsd -lhA --group-dirs first --header'

# Custom aliases
alias thm='~/dotfiles/scripts/thm-vpn.sh'
alias kssh='kitty +kitten ssh'
# launch term in same dir
alias f='kitty -d $(pwd) & disown'
# alias asd='kitty +open $(pwd) & disown' # same functionality like above

# Defaults
export EDITOR="nvim"
export VISUAL="nvim"

# bun completions
[ -s "/home/tim/.bun/_bun" ] && source "/home/tim/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
