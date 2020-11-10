# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update
brew bundle

# Remove non-dependencies
brew bundle cleanup -f

# Upgrade all
brew upgrade
brew upgrade --cask

# Update Brewfile
brew bundle dump -f
