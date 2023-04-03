#!/bin/sh

while read line; do
    code --install-extension $line --force
done <~/.config/vscode/extensions.txt
