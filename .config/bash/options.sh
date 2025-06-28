# History
export HISTFILE=$XDG_CACHE_HOME/bash_history
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000

# Adjust Terminal Size
shopt -s checkwinsize

# Prompt
PS1='\[\e[0;36m\]\u\[\e[0;37m\]@\[\e[0;34m\]\h\[\e[0;33m\] \w\[\e[0m\]$(if git rev-parse --is-inside-work-tree &>/dev/null; then echo " \[\e[0;32m\] $(git branch 2>/dev/null | grep "\*" | sed "s/* //")"; fi) \[\e[0m\] '

# I-beam Cursor
echo -ne "\e[5 q"
