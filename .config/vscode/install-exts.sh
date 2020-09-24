# To generate the list of extensions, run:
#
# ```sh
# code --list-extensions > ~/.config/vscode/vscode-exts.txt
# ```

while read line; do
    code --install-extension $line --force
done <~/.config/vscode/vscode-exts.txt
