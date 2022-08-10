#!/usr/bin/env bash

# Source gsutil binaries
if [[ -d "/usr/local/Caskroom/google-cloud-sdk" ]]; then
    source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc'
    source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc'
fi

# add kubectl auto completion
[[ ! -x "$(command -v kubectl)" ]]    || source <(kubectl completion zsh)

source $HOME/.cargo/env

# Load Angular CLI autocompletion.
source <(ng completion script)
[[ -x "$(command -v glab)" ]] && eval $(glab completion -s zsh)
