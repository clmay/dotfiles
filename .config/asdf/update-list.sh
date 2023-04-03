#!/bin/bash

# run the install script
. ~/.config/asdf/install.sh

# output the list of plugins to a file
asdf plugin list >~/.config/asdf/plugins.txt
