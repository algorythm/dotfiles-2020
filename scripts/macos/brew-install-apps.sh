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
brew cask install alacritty
brew cask install dotnet
brew cask install docker
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install google-backup-and-sync

brew cask install 1password
brew cask install bartender
brew cask install spectacle
brew cask install jetbrains-toolbox
brew cask install alfred
brew cask install adobe-creative-cloud

# brew install findutils
# brew install gnu-sed
# brew install gnupg
# brew install pth
# brew install telnet
# brew install ssh-copy-id

brew install p7zip

brew cask install discord
brew cask install spotify
brew cask install steam
brew cask install vlc
brew cask install teamviewer
brew cask install qbittorrent

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
