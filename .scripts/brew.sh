brew bundle

# Upgrade all
brew upgrade
brew upgrade --cask

# Update Brewfile
brew bundle dump -f

# Remove non-Brewfile packages
brew bundle cleanup -f
