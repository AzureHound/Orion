eval "$(/opt/homebrew/bin/brew shellenv)"

# XDG Directories
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_BIN_HOME="$HOME/.local/bin"
export PATH="$HOME/.atuin/bin:$PATH"

export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"
export RIPGREP_CONFIG_PATH="$HOME/.config/rg/.ripgreprc"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
export FFMPEG_DATADIR="$XDG_CONFIG_HOME/ffmpeg"
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export DOTNET_CLI_HOME="$XDG_DATA_HOME/dotnet"
export PNPM_HOME="$XDG_DATA_HOME/pnpm"

# History
export LESSHISTFILE="$XDG_CACHE_HOME/less_history"
export PYTHON_HISTORY="$XDG_DATA_HOME/python/history"

# Export
export EDITOR=nvim
export VISUAL="$EDITOR"
export SUDO_EDITOR="vim"

export LS_COLORS="$(vivid generate catppuccin-macchiato)"

# FZF
export FZF_DEFAULT_COMMAND="fd"
export fzf_fd_opts="--hidden --color=always"
export _ZO_FZF_OPTS="$FZF_DEFAULT_OPTS --preview '{$fzf_preview_dir_cmd} {2}'"
export fzf_preview_dir_cmd="eza --long --header --icons --all --color=always --group-directories-first --hyperlink"
export FZF_DEFAULT_OPTS="--height=90% --layout=reverse --info=inline --border rounded --pointer='' --margin=1 --padding=1 \
--color=bg+:-1,gutter:-1,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--bind 'ctrl-u:preview-half-page-up' \
--bind 'ctrl-d:preview-half-page-down' \
--bind 'ctrl-y:execute-silent(printf {} | cut -f 2- | wl-copy --trim-newline)' \
--multi"

# Tmux_FZF
export FZF_CTRL_R_OPTS="--reverse"
export FZF_TMUX_OPTS="-p"

# NPM
NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"

# pipx
export PATH="$PATH:/Users/eyes/Developer/repos/Orion/.local/bin"

# Sed
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
