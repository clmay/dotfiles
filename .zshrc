autoload -Uz compinit && compinit
zstyle :compinstall filename '/Users/chase.may/.zshrc'
# enable arrow keys in completion menu
zstyle ':completion:*:*:*:*:*' menu select
# case-insensitive matching in  completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
plugins=(zsh-completions)

autoload -Uz add-zsh-hook
add-zsh-hook chpwd auto_ls
auto_ls() { ls -a; }

setopt auto_cd
setopt hist_ignore_all_dups

if [[ -f ~/.config/zsh/aliases ]]; then source ~/.config/zsh/aliases; fi
if [[ -f ~/.config/zsh/secrets ]]; then source ~/.config/zsh/secrets; fi

if [[ $(uname -m) == "arm64" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ $(uname -m) == "x86_64" ]]; then
    eval "$(/usr/local/bin/brew shellenv)"
fi

ASDF_EXEC="$(brew --prefix asdf)/libexec/asdf.sh"
if [[ -f $ASDF_EXEC ]]; then
    source $ASDF_EXEC
fi

eval "$(starship init zsh)"
