#!/usr/bin/env zsh

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias c='clear'

alias l='eza --long --header -a --icons --git --group-directories-first'
alias la='eza -a --icons'
alias ls='eza --icons'
alias ll='eza -a -l --icons'
alias cp='cp -i'
alias mv='mv -i'
alias rg='rg -i'
alias df='df -h'
alias mkdir='mkdir -p'
alias tree='eza -a -T --git-ignore --icons'
alias lta4="eza -lTag --git-ignore --level=4 --icons"
alias grep='grep --color=auto'
alias lg='lazygit'
alias glogs='git log --oneline --graph --all'
# alias branch='git branch --sort=-committerdate | fzf --header "Checkout Recent Branch" --preview "git diff --color=always {1} | delta" --pointer="" | xargs git checkout'

alias bonsai='cbonsai --seed 119 --live'
alias clock='tty-clock -DScC6b'
alias fetch="fastfetch"
alias gen='tgpt -i'
alias gfetch="onefetch"
alias info="tldr"
alias matrix="unimatrix -n -c yellow -s 90 -l 'o'"
alias powertop='sudo powertop'
alias preview='kitten icat'
alias v='nvim'
alias zed='zeditor'
alias web='w3m duckduckgo.com'
alias weather='gust -f'

alias anime='FZF_DEFAULT_OPTS="\
--height=100% --info=right --border rounded --pointer=\ --margin=1 --padding=1 \
--color=bg+:-1,gutter:-1,spinner:#f4dbd6,hl:#ed8796 \
--color=fg:#cad3f5,header:#ed8796,info:#c6a0f6,pointer:#f4dbd6 \
--color=fg+:#cad3f5,prompt:#c6a0f6,hl+:#ed8796 \
--color=selected-bg:#494d64 \
--bind \"ctrl-y:execute-silent(printf {} | cut -f 2- | wl-copy --trim-newline)\" \
--multi --prompt \"󰥨 Search: \"" ani-cli'
