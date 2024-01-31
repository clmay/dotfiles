autoload -Uz compinit && compinit
zstyle ':compinstall' filename '/Users/chase.may/.zshrc'
# case-insensitive matching in  completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# enable arrow keys in completion menu
zstyle ':completion:*' menu select

setopt auto_cd
setopt hist_ignore_all_dups

setopt promptsubst
PROMPT='${(r:$COLUMNS::─:)}%F{blue}%2~%f %(0?.%F{green}%#%f.%F{red}%#%f) '
PROMPT2='> '
RPROMPT='%(1j.%F{blue}+%f.) %F{yellow}%*%f'

autoload -Uz add-zsh-hook
add-zsh-hook preexec _preexec
add-zsh-hook precmd _precmd

function _preexec() {
    t0=$(gdate +%s%3N)
}

function _precmd() {
    if [ $t0 ]; then
        t1=$(gdate +%s%3N)
        deltaT=$(($t1 - $t0))
        RPROMPT='%(1j.%F{blue}+%f.) %F{cyan}${deltaT}ms%f %F{yellow}%*%f'
        unset t0
    fi
}

if [[ -f ~/.aliases ]]; then
    source ~/.aliases
fi
if [[ -f ~/.secrets ]]; then
    source ~/.secrets
fi

if [[ $(uname -m) = arm64 ]]; then
    eval $(/opt/homebrew/bin/brew shellenv)
elif [[ $(uname -m) = x86_64 ]]; then
    eval $(/usr/local/bin/brew shellenv)
fi

source $(brew --prefix asdf)/libexec/asdf.sh
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc" # must be last last line
