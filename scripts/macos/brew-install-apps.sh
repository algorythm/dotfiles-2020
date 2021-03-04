#!/usr/bin/env bash

if ! [[ -x "$(command -v brew)" ]]; then
    echo "Brew isn't installed on your system!"
    exit 1
fi

# brew install wget --with-iri
# brew install grep
# brew install openssh
# brew install tmux
# brew install curl
brew install neovim

# brew install cask
brew install --cask alacritty
brew install --cask dotnet
brew install --cask docker
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask google-backup-and-sync

brew install --cask 1password
brew install --cask bartender
brew install --cask spectacle
brew install --cask jetbrains-toolbox
brew install --cask alfred
brew install --cask adobe-creative-cloud

# brew install findutils
# brew install gnu-sed
# brew install gnupg
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

# Install XCode
mas install 497799835
# Accept XCode License
sudo xcodebuild -license accept
# Install Snappy
mas install 512617038
# Install Slack
mas install 803453959
# Install The Unarchiver
mas install 425424353
# Install Amphetamine
mas install 937984704

brew cleanup
