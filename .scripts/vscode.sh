# To generate the list of extensions, run:
#
# ```sh
# code --list-extensions > ~/.config/init/vscode-exts.txt
# ```

while read line; do
    code --install-extension $line --force
done <~/.config/vscode-exts.txt
