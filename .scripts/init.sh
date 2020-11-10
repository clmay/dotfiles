# Install Homebrew
echo "Installing Homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
echo

# Run idempotent setup scripts
echo "Running Homebrew script"
echo
. ~/.scripts/brew.sh
echo

echo "Running \`asdf\` script"
echo
. ~/.scripts/asdf.sh
echo

echo "Running VS Code script"
echo
. ~/.scripts/vscode.sh
