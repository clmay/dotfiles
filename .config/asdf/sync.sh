#!/bin/bash

# read plugins from plugins.txt into an array
plugins=()
while read plugin; do
    plugins+=($plugin)
done <~/.config/asdf/plugins.txt

# install and set global version for every plugin
for plugin in "${plugins[@]}"; do
    asdf plugin add $plugin
    asdf plugin update $plugin
    asdf install $plugin latest
    asdf global $plugin latest
done

# update asdf shims
asdf reshim

# output the list of plugins back to the file
asdf plugin list >~/.config/asdf/plugins.txt
