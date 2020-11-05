# Homebrew
# --------
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install Homebrew packages
brew bundle

# `asdf`
# ------
asdf plugin add golang
asdf plugin add nodejs
asdf plugin add yarn

asdf install
