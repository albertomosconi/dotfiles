#!/bin/zsh

export PATH="$PATH:$HOME/.local/bin"

export EDITOR="nvim"
export TERMINAL="st"
export BROWSER="firefox"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc

[ "$(tty)" = "/dev/tty1" ] && ! pidof Xorg >/dev/null 2>&1  && startx