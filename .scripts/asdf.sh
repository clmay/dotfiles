touch .tool-versions

while read line; do
  asdf plugin add $line
done <~/.config/asdf-plugins.txt

asdf plugin update --all

asdf install
asdf reshim

asdf plugin list >~/.config/asdf-plugins.txt
