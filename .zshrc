autoload -Uz compinit && compinit
autoload -Uz promptinit && promptinit
setopt auto_cd
setopt hist_ignore_all_dups

zstyle ':compinstall' filename '/Users/chase.may/.zshrc'
# case-insensitive matching in  completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# enable arrow keys in completion menu
zstyle ':completion:*' menu select

source .aliases
test -f .secrets && source .secrets

if [[ $(uname -m) = arm64 ]]; then
    eval $(/opt/homebrew/bin/brew shellenv)
elif [[ $(uname -m) = x86_64 ]]; then
    eval $(/usr/local/bin/brew shellenv)
fi

source $(brew --prefix asdf)/libexec/asdf.sh
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc" # must be last last line
