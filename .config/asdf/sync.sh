#!/bin/bash

# read plugins.txt
# plugins=()
while read -r line; do
    plugins+=("$line")
done <~/.config/asdf/plugins.txt

# add plugins
echo "Adding plugins..."
echo "================="
echo
for plugin in ${plugins[@]}; do
    asdf plugin add $plugin
done
echo

# update plugins
echo "Updating plugins..."
echo "==================="
echo
for plugin in ${plugins[@]}; do
    asdf plugin update $plugin
    echo
done
# no echo here

# install latest versions of plugins
echo "Installing latest versions..."
echo "============================="
echo
for plugin in ${plugins[@]}; do
    asdf install $plugin latest
done
echo

# set global versions
echo "Setting global versions..."
for plugin in ${plugins[@]}; do
    asdf global $plugin latest
done
# no echo here

# update asdf shims
echo "Reshimming asdf..."
asdf reshim

# update plugins.txt
echo "Updating plugins.txt..."
asdf plugin list >~/.config/asdf/plugins.txt
