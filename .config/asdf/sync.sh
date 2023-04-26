#!/bin/bash

# read plugins from plugins.txt into an array
plugins=()
while read plugin; do
    plugins+=($plugin)
done <~/.config/asdf/plugins.txt

# install and set global version for every plugin
for plugin in "${plugins[@]}"; do
    echo "Working on \`$plugin\`..."
    asdf plugin add $plugin
    asdf plugin update $plugin
    asdf install $plugin latest
    asdf global $plugin latest
    echo "Done working on \`$plugin\`."
    echo
done

# update asdf shims
echo "Reshimming asdf..."
asdf reshim

# output the list of plugins back to the file
echo "Updating plugins.txt..."
asdf plugin list >~/.config/asdf/plugins.txt
