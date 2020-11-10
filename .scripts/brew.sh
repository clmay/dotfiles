brew update
brew bundle

# Remove non-dependencies
brew bundle cleanup -f

# Upgrade all
brew upgrade
brew upgrade --cask

# Update Brewfile
brew bundle dump -f
