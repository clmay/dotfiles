brew update
brew bundle

# Upgrade all
brew upgrade
brew upgrade --cask

# Remove non-dependencies
brew bundle cleanup -f

# Update Brewfile
brew bundle dump -f
