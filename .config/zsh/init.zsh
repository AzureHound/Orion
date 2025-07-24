#!/usr/bin/env zsh

# I-beam cursor
echo -ne "\e[5 q"
# precmd() {
#     echo -ne "\e[6 q"  # nvim exit I-beam cursor
# }

# Init
eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(atuin init zsh)"
eval "$(fzf --zsh)"
eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/p10k.json)"
# eval "$(tv init zsh)"
eval "$(zoxide init --cmd cd zsh)"

# if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
#  eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/p10k.json)"
# fi

# session
# colorscript
