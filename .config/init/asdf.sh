# To generate the list of extensions, run:
#
# ```sh
# asdf plugin list > ~/.config/init/asdf-plugins.txt
# ```

while read line; do
  asdf plugin add $line
done <~/.config/init/asdf-plugins.txt

asdf plugin update --all

asdf install
asdf reshim

asdf plugin list >~/.config/init/asdf-plugins.txt
