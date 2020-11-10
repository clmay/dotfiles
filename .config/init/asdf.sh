# To generate the list of extensions, run:
#
# ```sh
# asdf plugin list > ~/.config/init/asdf-plugins.txt
# ```

while read line; do
  asdf plugin add $line
done <~/.config/init/asdf-plugins.txt

asdf plugin update --all

# Add Node.js release keys
bash -c '${ASDF_DATA_DIR:=$HOME/.asdf}/plugins/nodejs/bin/import-release-team-keyring'

asdf install
asdf reshim

asdf plugin list >~/.config/init/asdf-plugins.txt
