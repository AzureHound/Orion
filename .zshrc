# Starship
#eval "$(starship init zsh)"
#export STARSHIP_CONFIG=~/.config/starship/starship.toml

# Ohmyposh
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/p10k.toml)"
fi

export BAT_THEME="Dracula"

# History
HISTFILE=$HOME/.zsh_history
SAVEHIST=1000
HISTSIZE=1000
setopt appendhistory
setopt share_history
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt hist_ignore_dups
setopt hist_expire_dups_first
setopt hist_verify

# Completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh-autocomplete
source /opt/homebrew/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
#zstyle ':completion:*' menu no

# Set vertical I-beam cursor
echo -ne "\e[5 q"

# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

# fzf integrations
fcd() {
  local dir
  dir=$(find . -type d 2> /dev/null | fzf +m) && cd "$dir"
}

# fzf colors
export FZF_DEFAULT_OPTS="--color=bg+:-1,gutter:-1"

# fzf-file-manager
function fzf-file-manager {
    local path="${1:-.}"

    # Get files and pipe to fzf with bat preview
    local selectedFile=$(/usr/bin/find "$path" -type f | /opt/homebrew/bin/fzf --preview '/opt/homebrew/bin/bat --style=numbers --color=always {}' --preview-window=right:50%:wrap --select-1 --exit-0)

    # Check if a file was selected
    if [[ -n "$selectedFile" ]]; then
        # Open the selected file in Neovim
        /opt/homebrew/bin/nvim "$selectedFile" || echo "Failed to open file in Neovim."
    else
        echo "No file selected."
    fi
}

# nvims
function nvims() {
  items=$(find $HOME/.config -maxdepth 2 -name "init.lua" -type f -execdir sh -c 'pwd | xargs basename' \;)
  selected=$(printf "%s\n" "${items[@]}" | \
    FZF_DEFAULT_OPTS="${FZF_DEFAULT_OPTS-} --prompt='   Neovim Configs' --preview-window 'right:border-left:50%:<40(right:border-left:50%:hidden)' --preview 'lsd -l -A --tree --depth=1 --color=always --blocks=size,name ~/.config/{} | head -200'" \
    fzf)

  if [[ -z $selected ]]; then
    return 0
  elif [[ $selected == "nvim" ]]; then
    selected=""
  fi
  NVIM_APPNAME=$selected nvim "$@"
}

# fzf-nvim
function fzf-nvim {
    file=$(fzf --height 100% --preview 'bat --style=numbers --color=always {}')
    if [ -n "$file" ]; then
        nvimPath="/opt/homebrew/bin/nvim"  # Path to Neovim
        if command -v nvim &> /dev/null; then
            "$nvimPath" "$file" || echo "Failed to open Neovim."
        else
            echo "Neovim is not installed."
        fi
    else
        echo "No file selected."
    fi
}

# fzf-nano
function fzf-nano {
    file=$(fzf --height 100% --preview 'bat --style=numbers --color=always {}')
    if [ -n "$file" ]; then
        nanoPath="/usr/bin/nano"  # Path to Nano
        if command -v nano &> /dev/null; then
            "$nanoPath" "$file" || echo "Failed to open Nano."
        else
            echo "Nano is not installed."
        fi
    else
        echo "No file selected."
    fi
}

# git
function github {
    if [ $# -eq 0 ]; then
        echo "Usage: github <commit-message>"
        return 1
    fi

    git add .
    git commit -m "$*"

    if git push; then
        echo "Changes pushed successfully."
    else
        echo "Failed to push changes."
    fi
}

# aliasis
alias la='ls -a'
alias l='ls -CF'
alias ll='ls -l'
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ls='eza --icons=auto --color=always'
alias tree='ls -a -T --git-ignore'
alias lta4="eza -lTag --git-ignore --level=4 --icons"
alias vim=nvim
alias nvs=nvims
alias tmux='tmux -f ~/.tmux.conf'
alias branch='git branch --sort=-committerdate | fzf --header "Checkout Recent Branch" --preview "git diff --color=always {1} | delta" --pointer="" | xargs git checkout'
alias commits='/Users/eyes/.scripts/git-commits.sh'
alias rain='cmatrix -C yellow'
alias bonsai='cbonsai --seed 119 --live'

