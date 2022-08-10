#!/usr/bin/env bash

if ! [[ -x "$(command -v brew)" ]]; then
    echo "Brew isn't installed on your system!"
    exit 1
fi

brew install wget --with-iri
brew install grep
brew install openssh
brew install tmux
brew install curl
brew install neovim
brew install nnn
brew install ncurses
brew install neofetch
brew install nmap
brew install ranger
brew install git-lfs

# brew install cask
brew install --cask google-chrome
brew install --cask 1password
brew install --cask alacritty
brew install --cask visual-studio-code
brew install --cask bartender
brew install --cask alfred
brew install --cask jetbrains-toolbox
brew install --cask dotnet
brew install --cask docker
brew install --cask google-backup-and-sync

brew install --cask powershell
brew install awscli
brew install btop
brew install azurecli
# Disabled as they are installed via another script instead
# brew install --cask font-fira-code-nerd-font
# brew install --cask font-inconsolata-nerd-font
brew install --cask notion
brew install --cask ngrok
brew install --cask gpg-suite-pinentry
brew install --cask microsoft-office

# brew install --cask spectacle # disabled, might want to replace
brew install --cask adobe-creative-cloud

brew install findutils
brew install gnu-sed
brew install gnupg
# brew install pth
# brew install telnet
# brew install ssh-copy-id

brew install p7zip

brew install --cask discord
brew install --cask spotify
brew install --cask steam
brew install --cask vlc
brew install --cask teamviewer
brew install --cask qbittorrent

brew install mas

# mas install 497799835 # XCode ## Might not need this
mas install 803453959 # Slack
mas install 425424353 # The Unarchiver
mas install 937984704 # Ampethamine
mas install 823766827 # OneDrive
mas install 512617038 # Snappy

brew cleanup

