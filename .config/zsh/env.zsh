#!/usr/bin/env zsh

# XDG Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_BIN_HOME="$HOME/.local/bin"

export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export RIPGREP_CONFIG_PATH="$HOME/.config/rg/.ripgreprc"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"
export PNPM_HOME="$XDG_DATA_HOME/pnpm"

# Respect XDG Specification
export GOPATH="$XDG_DATA_HOME/go"
export GOMODCACHE="$XDG_CACHE_HOME/go/mod"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export ANDROID_USER_HOME="$XDG_DATA_HOME/android"
export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export RIPGREP_CONFIG_PATH="$HOME/.config/rg/.ripgreprc"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export W3M_DIR="$XDG_DATA_HOME/w3m"
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"
export PNPM_HOME="$XDG_DATA_HOME/pnpm"

# History
# export HISTFILE="$XDG_STATE_HOME/zsh/history"
export LESSHISTFILE="$XDG_CACHE_HOME/less/less_history"
export PYTHON_HISTORY="$XDG_CACHE_HOME_HOME/python/history"

# Editor
export EDITOR="nvim"
export VISUAL="$EDITOR"
export SUDO_EDITOR="vim"

# Bin
export PATH="$HOME/.local/bin:$PATH"

# Curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

# Firefox
export BROWSER="firefox"

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
export GLAMOUR_STYLE="$HOME/.config/glow/themes/catppuccin-macchiato.json"

# gnubin
PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

# GPG/LANG
export GPG_TTY="$(tty)"

# Man
export MANPAGER="vim -M +MANPAGER -"
# export MANPAGER='nvim +Man!'

# MANPATH
export MANPATH="/usr/share/man:/usr/local/man:/usr/local/share/man"

# Trash
export PATH="/opt/homebrew/opt/trash-cli/bin:$PATH"

# Vivid
export LS_COLORS="$(vivid generate catppuccin-macchiato)"
