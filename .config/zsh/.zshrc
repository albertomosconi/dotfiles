HISTFILE="$XDG_CACHE_HOME/zsh/history"
HISTSIZE=1000
SAVEHIST=10000
setopt autocd
bindkey -v
export KEYTIMEOUT=1

autoload -Uz compinit
zstyle ':completion:*' menu select
# case insensitive path-completion
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
# partial completion suggestions
zstyle ':completion:*' list-suffixes
zstyle ':completion:*' expand prefix suffix
zmodload zsh/complist
compinit -d ${XDG_CACHE_HOME}/zsh/zcompdump-$ZSH_VERSION
_comp_options+=(globdots)

autoload -U colors && colors
PS1="%B%(0?.%F{green}.%F{red})%T %F{blue}%~%f "
stty stop undef

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/aliasrc"
