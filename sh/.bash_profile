#
# ~/.bash_profile
#

echo "Running ~/.bash_profile"

. ~/.config/sh/env.sh
. ~/.config/sh/setup.sh

[[ -f ~/.bashrc ]] && . ~/.bashrc
