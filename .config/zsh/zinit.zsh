#!/usr/bin/env zsh

# Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Plugins
zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zdharma-continuum/fast-syntax-highlighting
# zinit ice depth=1
# zinit light djui/alias-tips
# zinit light jeffreytse/zsh-vi-mode

# Snippets
zinit snippet OMZP::command-not-found
zinit snippet OMZP::man
zinit snippet OMZP::node
zinit snippet OMZP::python
zinit snippet OMZP::sudo
zinit snippet OMZP::uv

# Styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu no
# zstyle ':fzf-tab:*' use-fzf-default-opts yes
zstyle ':fzf-tab:*' fzf-flags  '--pointer='\
                          '--color=bg+:-1,gutter:-1,spinner:#f4dbd6,hl:#ed8796' \
                          '--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6' \
                          '--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796' \
                          '--color=selected-bg:#494d64' \
                          '--prompt=󰥨 Search: '
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -a -1 --show-symlinks --git-ignore --icons --color=always $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza -a -1 --show-symlinks --git-ignore --icons --color=always $realpath'
