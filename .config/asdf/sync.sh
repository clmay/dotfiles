#!/bin/bash

# read plugins from plugins.txt and store in an array
plugins=()
while read plugin; do
    plugins+=($plugin)
done <~/.config/asdf/plugins.txt

# for every plugin in the array, install it
for plugin in "${plugins[@]}"; do
    asdf plugin add $plugin
done

# update all plugins
asdf plugin update --all

# install and set global version for every plugin
for plugin in "${plugins[@]}"; do
    asdf install $plugin latest
    asdf global $plugin latest
done

# update asdf shims
asdf reshim

# output the list of plugins to a file
asdf plugin list >~/.config/asdf/plugins.txt
