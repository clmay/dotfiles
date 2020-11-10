brew update
brew bundle

# Upgrade all
brew upgrade
brew upgrade --cask

# Update Brewfile
brew bundle dump -f

# Remove non-dependencies
brew bundle cleanup -f
