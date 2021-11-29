#!/usr/bin/env bash

if [ -n "$BASH_VERSION" ]; then
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# Exports

export LC_COLLATE="C"
export TERMINAL="/usr/bin/alacritty"

export GOPATH=$HOME/src/go

# i3

HN=$(hostname)
I3_CONFIG_DIR=$HOME/.config/i3
CUSTOM=$I3_CONFIG_DIR/config.$HN
DEFAULT=$I3_CONFIG_DIR/config.default
if [[ -f "$CUSTOM" ]]; then
    cat $CUSTOM > $DOT/i3/.i3/config
else
    cat $DEFAULT > $DOT/i3/.i3/config
fi

# Path

export PATH=$(zsh ~/.path.zsh)
