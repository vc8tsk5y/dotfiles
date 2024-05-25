# History
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=$HISTSIZE
HISTDUP=erase
export HISTORY_IGNORE="(ls*|cd*|pwd*|exit|lsd*)"
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

# vim mode
bindkey -v

# Enable command auto-completion
autoload -Uz compinit
compinit

# Plugins and Configurations
source /usr/share/zsh/plugins/fzf-tab-git/fzf-tab.plugin.zsh

source /usr/share/zsh/plugins/zsh-autopair/autopair.zsh

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

source /usr/share/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# shell integrations
eval "$(starship init zsh)"
eval "$(fzf --zsh)"


# fzf-tab config
zstyle ':completion:*:descriptions' format '[%d]'
# preview directory's content with lsd when completing cd
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'lsd -A --color=always $realpath'
# set list-colors to enable filename colorizing
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# completions show hidden files
setopt globdots



# Aliases
# General aliases
alias grep='grep -i --color=auto'
alias mv='mv -i'
alias cp='cp -i'
alias vim='nvim'
alias lsd='lsd -lhA --group-dirs first --header'

# Custom aliases
alias thm='~/dotfiles/scripts/thm-vpn.sh'
alias kssh='kitty +kitten ssh'

# Defaults
export EDITOR="nvim"
export VISUAL="nvim"
