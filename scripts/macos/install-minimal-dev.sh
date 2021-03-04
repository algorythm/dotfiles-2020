#!/usr/bin/env bash

if [[ ! -x "$(command -v brew)" ]]; then
    echo "Brew isn't installed on your system!"
    exit 1
fi

#####
# Install primary applications
#####
brew install --cask alacritty
brew install --cask visual-studio-code
brew install --cask google-chrome
brew install --cask jetbrains-toolbox
brew install --cask alfred
brew install --cask spectacle
brew install --cask bartender
brew install --cask google-backup-and-sync
brew install --cask 1password
brew install --cask docker
brew install neovim
brew install p7zip

brew install --cask discord
brew install --cask spotify
brew install --cask steam
brew install --cask vlc
brew install --cask teamviewer

brew install mas
brew cleanup

mas install 803453959 # Slack
mas install 823766827 # OneDrive
mas install 497799835 # XCode
# Accept XCode License
sudo xcodebuild -license accept
mas install 512617038 # Snappy
mas install 937984704 # Amphetamine


