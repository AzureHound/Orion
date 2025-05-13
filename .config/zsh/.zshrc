# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/opt/trash-cli/bin:$PATH"

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh)"
fi

# Zinit
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# ZSH Themes
source ~/.local/share/zinit/plugins/catppuccin---zsh-syntax-highlighting/themes/catppuccin_macchiato-zsh-syntax-highlighting.zsh

# Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab
zinit light catppuccin/zsh-syntax-highlighting
# zinit light djui/alias-tips
# zinit ice depth=1
# zinit light jeffreytse/zsh-vi-mode

# Snippets
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found

# Load Completions
autoload -Uz compinit && compinit
zinit cdreplay -q

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' menu no
zstyle ':fzf-tab:*' fzf-flags  '--pointer='\
                          '--color=bg+:-1,gutter:-1,spinner:#f4dbd6,hl:#ed8796' \
                          '--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6' \
                          '--color=marker:#f4dbd6,fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796' \
                          '--color=selected-bg:#494d64'
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -a -1 --show-symlinks --git-ignore --icons --color=always $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza -a -1 --show-symlinks --git-ignore --icons --color=always $realpath'
# zstyle ':fzf-tab:*' fzf-command 'ftb-tmux-popup'
# zstyle ':fzf-tab:*' popup-min-size 80 12

# History
HISTFILE=$XDG_CACHE_HOME/zsh_history
SAVEHIST=10000
SAVEHIST=$HISTSIZE
HISTDUP=erase

zshaddhistory() {
  local j=1
  while ([[ ${${(z)1}[$j]} == *=* ]]) {
    ((j++))
  }
  whence ${${(z)1}[$j]} >| /dev/null || return 1
}

# Prompt
setopt autocd
setopt appendhistory
setopt correct
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt hist_expire_dups_first
setopt hist_verify
setopt interactive_comments
setopt no_case_glob no_case_match
setopt globdots
setopt extended_glob
unsetopt prompt_sp

# Ohmyposh
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/p10k.json)"
# if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
#  eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/p10k.json)"
# fi

# I-beam cursor
echo -ne "\e[5 q"
precmd() {
    echo -ne "\e[6 q"  # nvim exit I-beam cursor
}

# Ollama
function ollama-serve {
    ollama serve > /dev/null 2>&1 &
}

function ollama-kill {
    pkill ollama
}

# Yazi
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# Keybindings
bindkey -e
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
bindkey '^[w' kill-region

# Shell integrations
eval "$(atuin init zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(fzf --zsh)"
# eval "$(tv init zsh)"

# Curl
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

# gnubin
PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

"session"
# colorscript
