# XDG Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_BIN_HOME="$HOME/.local/bin"

# XDG User Directories
XDG_DESKTOP_DIR="$HOME/Desktop"
XDG_DOCUMENTS_DIR="$HOME/Documents"
XDG_DOWNLOAD_DIR="$HOME/Downloads"
XDG_MUSIC_DIR="$HOME/Music"
XDG_PICTURES_DIR="$HOME/Pictures"
XDG_PUBLICSHARE_DIR="$HOME/Public"
XDG_TEMPLATES_DIR="$HOME/Templates"
XDG_VIDEOS_DIR="$HOME/Videos"

# Respect XDG Specification
export ATUIN_PATH="$HOME/.atuin/bin"
export PATH="$ATUIN_PATH:$XDG_BIN_HOME:$PATH"
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
export XINITRC="$XDG_CONFIG_HOME/X11/xinitrc"
export XSERVERRC="$XDG_CONFIG_HOME/X11/xserverrc"
export WINEPREFIX="$XDG_DATA_HOME/wine"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export W3M_DIR="$XDG_DATA_HOME/w3m"
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"
export PNPM_HOME="$XDG_DATA_HOME/pnpm"

# Colors
export LS_COLORS="$(vivid generate catppuccin-macchiato)"
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# Editor
export EDITOR=nvim
export VISUAL="$EDITOR"
export SUDO_EDITOR="vim"

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

# Man
export MANPAGER="vim -M +MANPAGER -"
#export MANPAGER='nvim +Man!'

# NPM
NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
