#!/usr/bin/env bash

if [[ ! -x "$(command -v brew)" ]]; then
    echo "Brew isn't installed on your system!"
    exit 1
fi

#####
# Install primary applications
#####
brew cask install alacritty
brew cask install visual-studio-code
brew cask install google-chrome
brew cask install jetbrains-toolbox
brew cask install alfred
brew cask install spectacle
brew cask install bartender
brew cask install google-backup-and-sync
brew cask install 1password
brew cask install docker
brew install neovim
brew install p7zip

brew cask install discord
brew cask install spotify
brew cask install steam
brew cask install vlc
brew cask install teamviewer

brew install mas
brew cleanup

mas install 803453959 # Slack
mas install 823766827 # OneDrive
mas install 497799835 # XCode
# Accept XCode License
sudo xcodebuild -license accept
mas install 512617038 # Snappy
mas install 937984704 # Amphetamine


