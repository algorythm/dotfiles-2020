#!/usr/bin/env bash

alias k="kubectl"

# stupid joke about Postmand Per
alias per="open -a postman.app &"
# cd to root of git repository
alias cdr="cd `git rev-parse --show-toplevel`"

[[ ! -x "$(command -v nvim)" ]]       || alias vim="nvim"

alias gb='fzf-git-branch'
alias gco='fzf-git-checkout'

# Normalize `open` across Linux, macOS, and Windows.
# This is needed to make the `o` function (see below) cross-platform.
if [ ! $(uname -s) = 'Darwin' ]; then
  if grep -q Microsoft /proc/version; then
    # Ubuntu on Windows using the Linux subsystem
    alias open='explorer.exe';
  else
    alias open='xdg-open';
  fi
fi
