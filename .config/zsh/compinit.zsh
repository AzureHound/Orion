#!/usr/bin/env zsh

# Load Completions
[[ -d "$XDG_CACHE_HOME/zsh" ]] || mkdir -p "$XDG_CACHE_HOME/zsh"
autoload -Uz compinit && compinit -d "$ZSH_COMPDUMP"
