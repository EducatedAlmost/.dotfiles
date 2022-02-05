#!/usr/bin/env bash

echo "Running" $0

## SwayWM
isogeny \
    -t ~/.dotfiles/sway/.config/sway/config.template \
    -c ~/.dotfiles/sway/.config/sway/config.$(uname -n).edn \
    -d ~/.dotfiles/sway/.config/sway/config.default.edn \
    -o ~/.dotfiles/sway/.config/sway/config \
    --strict --verbose

## Alacritty
isogeny \
    -t ~/.dotfiles/alacritty/.config/alacritty/alacritty.yml.template \
    -c ~/.dotfiles/alacritty/.config/alacritty/alacritty.yml.$(uname -n).edn \
    -d ~/.dotfiles/alacritty/.config/alacritty/alacritty.yml.default.edn \
    -o ~/.dotfiles/alacritty/.config/alacritty/alacritty.yml \
    --strict --verbose
