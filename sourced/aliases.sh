#!/usr/bin/env bash

# stupid joke about Postmand Per
alias per="open -a postman.app &"
# cd to root of git repository
alias cdr="cd `git rev-parse --show-toplevel`"

[[ ! -x "$(command -v nvim)" ]]       || alias vim="nvim"

alias gb='fzf-git-branch'
alias gco='fzf-git-checkout'
