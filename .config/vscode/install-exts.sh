while read line; do
    code --install-extension $line --force
done < vscode-exts.txt
