# Update asdf plugin list with the following command:
# asdf plugin list >~/.config/asdf-plugins.txt

while read line; do
  asdf plugin add $line
done <~/.config/asdf-plugins.txt

asdf plugin update --all

asdf install
asdf reshim
