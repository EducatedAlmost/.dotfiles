#!/usr/bin/env bash

echo "Running" $0

# Location of other zsh configuration
ZDOTDIR=$HOME/.config/zsh
export ZIM_HOME=$ZDOTDIR

# Host(name) standardisation
export HOSTNAME=$(uname -n)
export HOST=$(uname -n)

# export PATH=$PATH:/path/file
export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:$HOME/.config/emacs/bin
export PATH=$PATH:$HOME/bin
export GOPATH=$HOME/src/go
export PATH=$PATH:$GOPATH/bin

export GDK_SCALE=1 # must be an integer
export GDK_DPI_SCALE=1
export XCURSOR_SIZE=20
gsettings set org.gnome.desktop.interface cursor-size 20

export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

export EDITOR="emacsclient -c"
export VISUAL="emacsclient -c"
export ALTERNATE_EDITOR=emacs

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/.npmrc
export GITLIBS=$XDG_CACHE_HOME/gitlibs

export MOZ_ENABLE_WAYLAND=1 firefox

export WINEHOME=$XDG_DATA_HOME/wine
export WINEARCH=win32
export WINEPREFIX=$XDG_DATA_HOME/wine/.wine-32
