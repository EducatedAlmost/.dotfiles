export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
COMPLETION_WAITING_DOTS="true"

plugins=(
    aws
    colored-man-pages
    colorize
    command-not-found
    cp
    debian
    dirhistory
    docker
    git
    git-extras
    git-hubflow
    github
    gitignore
    # history-substring-search
    lein
    mvn
    pass
    vi-mode
    web-search
    # zsh-completions
    # zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

set -o vi

# Aliases
ALIASES=~/.aliases.zsh
if [[ -a $ALIASES ]]; then
    source $ALIASES
fi

LOCAL_ALIASES=~/.aliases.local.zsh
if [[ -a $LOCAL_ALIASES ]]; then
    source $LOCAL_ALIASES
fi

# unalias ag # clashes with silver-searcher

# Cod
if (command -V cod &> /dev/null); then
    source <(cod init $$ zsh)
fi

# Emacs
export EDITOR="emacsclient -c"
export VISUAL="emacsclient -c"
export ALTERNATE_EDITOR=emacs

# JVM
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

# Keyboard settings
KEY_DELAY=150
KEY_RATE=50
xset r rate $KEY_DELAY $KEY_RATE
setxkbmap -option caps:escape # remap CAPS --> ESC

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Plugins

source ~/.zsh.d/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh.d/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
