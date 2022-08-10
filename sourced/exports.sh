#!/usr/bin/env bash


export VISUAL="nvim"
export EDITOR="${VISUAL}"
export GPG_TTY=`tty`
export NNN_PLUG='p:preview-tabbed;f:fzopen;i:imgview'


safeAddToPath() {
  thePath="${1}"
  echo "adding ${thePath} to path"
  [ -z "${thePath}" ] && echo "ERROR: need to specify a path to export" && exit 1
  [ -d "${thePath}" ] && PATH+=("${thePath}")
  export PATH
}

path+=("${HOME}/.arkade/bin")
path+=("${HOME}/.poetry/bin")
path+=("/usr/local/opt/libpq/bin")
path+=("${HOME}/dotfiles-2020/bin")
path+=("/invalid/path")
export path

[[ -x "$(command -v arkade)" ]] && eval $(arkade completion zsh)
