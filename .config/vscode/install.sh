#!/bin/sh

while read extension; do
    code --install-extension $extension --force
done <~/.config/vscode/extensions.txt
