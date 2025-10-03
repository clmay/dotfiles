setopt auto_cd
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt promptsubst

if [[ $(uname -m) = arm64 ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
else
  eval "$(/usr/local/bin/brew shellenv)"
fi

eval "$(mise activate zsh)"
eval "$(direnv hook zsh)"

[[ -f ~/.aliases ]] && source ~/.aliases
[[ -f ~/.secrets ]] && source ~/.secrets

function _preexec() {
  # use gdate if available, else fallback to date for portability
  if command -v gdate >/dev/null; then
    t0=$(gdate +%s%3N)
  else
    t0=$(($(date +%s)*1000))
  fi
}

function _precmd() {
  if [[ -n ${t0-} ]]; then
    if command -v gdate >/dev/null; then
      t1=$(gdate +%s%3N)
    else
      t1=$(($(date +%s)*1000))
    fi
    deltaT=$((t1 - t0))
    RPROMPT='%(1j.%F{blue}+%f.) %F{cyan}'"${deltaT}"'ms%f %F{yellow}%*%f'
    unset t0
  fi
}

autoload -Uz add-zsh-hook
add-zsh-hook preexec _preexec
add-zsh-hook precmd _precmd

PROMPT='${(r:$COLUMNS::─:)}%F{blue}%2~%f %(0?.%F{green}%#%f.%F{red}%#%f) '
PROMPT2='> '
RPROMPT='%(1j.%F{blue}+%f.) %F{yellow}%*%f'

autoload -Uz compinit
zstyle ':compinstall' filename '/Users/chase.may/.zshrc'
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
compinit -d ~/.cache/zsh/zcompdump
