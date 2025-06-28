#!/usr/bin/env zsh

# Exiting vim cursor
function vim() {
  command vim "$@"
  echo -ne '\e[5 q'
}

# Exiting neovim cursor
function nvim() {
  command nvim "$@"
  echo -ne '\e[5 q'
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
