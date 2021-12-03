#
# ~/.bash_profile
#

# export PATH=$PATH:/path/file
export PATH=$PATH:$HOME/.scripts
export PATH=$PATH:$HOME/.config/emacs/bin

export GDK_SCALE=1 # must be an integer
export GDK_DPI_SCALE=1
export XCURSOR_SIZE=20
gsettings set org.gnome.desktop.interface cursor-size 20


export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

export JAVA_HOME=/usr/lib/jvm/java-17-openjdk

export MOZ_ENABLE_WAYLAND=1 firefox

[[ -f ~/.bashrc ]] && . ~/.bashrc
