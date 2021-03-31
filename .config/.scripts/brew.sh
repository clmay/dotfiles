brew bundle

# Upgrade all
brew upgrade

# Update Brewfile
brew bundle dump -f

# Remove non-Brewfile packages
brew bundle cleanup -f
