autoload -U colors && colors

autoload -Uz compinit && compinit
zstyle ':compinstall' filename '/Users/chase.may/.zshrc'
# case-insensitive matching in  completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# enable arrow keys in completion menu
zstyle ':completion:*' menu select

setopt auto_cd
setopt hist_ignore_all_dups

setopt promptsubst
PROMPT='%U${(r:$COLUMNS:: :)}%u%F{cyan}%2~%f'$'\n''%# '
PROMPT2='> '
RPROMPT='%(1j.%F{blue}+ %f.)%F{yellow}%D{'%Y-%m-%d'} %*%f —— %(0?.%F{green}OK %f.%F{red}ERR%f)'

source .aliases
test -f .secrets && source .secrets

if [[ $(uname -m) = arm64 ]]; then
    eval $(/opt/homebrew/bin/brew shellenv)
elif [[ $(uname -m) = x86_64 ]]; then
    eval $(/usr/local/bin/brew shellenv)
fi

source $(brew --prefix asdf)/libexec/asdf.sh
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc" # must be last last line
