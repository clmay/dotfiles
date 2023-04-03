#!/bin/sh

while read plugin; do
    asdf plugin add $plugin
done <~/.config/asdf/plugins.txt

asdf plugin update --all

while read plugin; do
    asdf install $plugin latest
    asdf global $plugin latest
done <~/.config/asdf/plugins.txt

asdf reshim
