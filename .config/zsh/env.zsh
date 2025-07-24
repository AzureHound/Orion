#!/usr/bin/env zsh

# XDG Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_BIN_HOME="$HOME/.local/bin"

# Respect XDG Specification
export ANDROID_USER_HOME="$XDG_DATA_HOME/android"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"
export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PNPM_HOME="$XDG_DATA_HOME/pnpm"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export RIPGREP_CONFIG_PATH="$XDG_CONFIG_HOME/rg/.ripgreprc"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export W3M_DIR="$XDG_DATA_HOME/w3m"
export ZSH_COMPDUMP="$XDG_CONFIG_HOME/zsh/.zcompdump"

# History
export HISTFILE="$XDG_CACHE_HOME/zsh/history"
export PYTHON_HISTORY="$XDG_CACHE_HOME/python/history"
export LESSHISTFILE="$XDG_CACHE_HOME/less/less_history"
export ZSH_SESSION_DIR="$XDG_CACHE_HOME/zsh/sessions"; [ -d "$ZSH_SESSION_DIR" ] || mkdir -p "$ZSH_SESSION_DIR"

# Editor
export EDITOR="nvim"
export VISUAL="$EDITOR"
export SUDO_EDITOR="vim"

# Bin
export PATH="$XDG_BIN_HOME:$PATH"

# FZF
export FZF_DEFAULT_COMMAND="fd --hidden --no-ignore"
export fzf_fd_opts="--hidden --color=always"
export _ZO_FZF_OPTS="$FZF_DEFAULT_OPTS"
export FZF_DEFAULT_OPTS="--height=100% --info=right --border=rounded --pointer='' --marker='⇒' --margin=1 --padding=1 \
--color=bg+:-1,gutter:-1,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--bind='ctrl-u:preview-half-page-up' \
--bind='ctrl-d:preview-half-page-down' \
--bind='ctrl-y:execute-silent(printf {} | cut -f 2- | wl-copy --trim-newline)' \
--multi --prompt='󰥨 Search: '"

# glow
export GLAMOUR_STYLE="$XDG_CONFIG_HOME/glow/themes/catppuccin-macchiato.json"

# gnubin
export PATH="/opt/homebrew/opt/grep/libexec/gnubin:/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

# GPG/LANG
export GPG_TTY="$(tty)"

# Man
export MANPAGER="vim -M +MANPAGER -"
# export MANPAGER='nvim +Man!'

# MANPATH
export MANPATH="/usr/share/man:/usr/local/man:/usr/local/share/man"

# Vivid
# export LS_COLORS="$(vivid generate catppuccin-macchiato)"
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
