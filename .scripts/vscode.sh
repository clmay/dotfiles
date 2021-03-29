while read line; do
    code --install-extension $line --force
done <~/.config/vscode/vscode-exts.txt

code --list-extensions >~/.config/vscode/vscode-exts.txt
