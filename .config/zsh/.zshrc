# Homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="/opt/homebrew/opt/trash-cli/bin:$PATH"

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

# Snippets
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found

# Load Completions
autoload -Uz compinit && compinit
zinit cdreplay -q

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -a -1 --show-symlinks --git-ignore --icons --color=always $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'eza -a -1 --show-symlinks --git-ignore --icons --color=always $realpath'

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
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt hist_expire_dups_first
setopt hist_verify
setopt no_case_glob no_case_match
setopt globdots
setopt extended_glob
unsetopt prompt_sp

# Ohmyposh
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
 eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/p10k.toml)"
fi

# I-beam cursor
echo -ne "\e[5 q"

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
