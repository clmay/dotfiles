#!/bin/bash

# read extensions from extensions.txt into an array
extensions=()
while read extension; do
    extensions+=($extension)
done <~/.config/vscode/extensions.txt

# for every extension in the array, install it
for extension in "${extensions[@]}"; do
    code --install-extension $extension --force
done

# output the list of extensions to a file
code --list-extensions >~/.config/vscode/extensions.txt
