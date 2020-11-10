# To generate the list of extensions, run:
#
# ```sh
# asdf plugin list > ~/.config/init/asdf-plugins.txt
# ```

while read line; do
  asdf plugin add $line
  asdf install $line latest
  asdf global $line latest
done <~/.config/asdf-plugins.txt

asdf plugin update --all
asdf reshim

asdf plugin list >~/.config/asdf-plugins.txt
