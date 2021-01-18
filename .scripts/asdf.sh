while read line; do
  asdf plugin add $line
done <~/.config/asdf/asdf-plugins.txt

asdf plugin update --all

while read line; do
  asdf install $line latest
  asdf global $line latest
done <~/.config/asdf/asdf-plugins.txt

asdf reshim

asdf plugin list >~/.config/asdf/asdf-plugins.txt
