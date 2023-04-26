#!/bin/bash

# read extensions from extensions.txt into an array
extensions=()

echo "Reading extensions.txt..."
echo

while read extension; do
    extensions+=($extension)
done <~/.config/vscode/extensions.txt

# for every extension in the array, install it
for extension in "${extensions[@]}"; do
    echo "Installing $extension..."
    code --install-extension $extension --force
    echo "Done installing $extension."
    echo
done

# output the list of extensions back to the file
echo "Updating extensions.txt..."
code --list-extensions >~/.config/vscode/extensions.txt
