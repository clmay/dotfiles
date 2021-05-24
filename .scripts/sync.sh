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

echo "Running Rubygems script"
echo
. ~/.scripts/gems.sh
