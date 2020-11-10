# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Run idempotent setup scripts
. ~/.scripts/brew.sh
. ~/.scripts/asdf.sh
. ~/.scripts/vscode.sh
