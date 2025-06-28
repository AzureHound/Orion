#!/usr/bin/env bash

[[ $- != *i* ]] && return

# HOME
BASH_HOME=~/.config/bash

# Configs
source "$BASH_HOME/aliases.sh"
source "$BASH_HOME/options.sh"
source "$BASH_HOME/env.sh"
source "$BASH_HOME/functions.sh"
source "$BASH_HOME/init.sh"
