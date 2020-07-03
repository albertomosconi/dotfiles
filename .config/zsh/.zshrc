HISTFILE="$XDG_CACHE_HOME/zsh/history"
HISTSIZE=1000
SAVEHIST=10000
setopt autocd
bindkey -v
export KEYTIMEOUT=1

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit -d ${XDG_CACHE_HOME}/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)

autoload -U colors && colors
PS1="%B%{$fg[green]%}%~%{$reset_color%}%B "
PS1="%B%0(?.$fg[green].$fg[red])%T %{$fg[yellow]%}%~ %{$reset_color%}"
stty stop undef

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc"
