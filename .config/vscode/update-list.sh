#!/bin/bash

# run the install script
. ~/.config/vscode/install.sh

# output the list of extensions to a file
code --list-extensions >~/.config/vscode/extensions.txt
