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

if [[ -f ~/.aliases ]]; then source ~/.aliases; fi
if [[ -f ~/.secrets ]]; then source ~/.secrets; fi

ASDF_EXEC="$(brew --prefix asdf)/libexec/asdf.sh"
if [[ -f $ASDF_EXEC ]]; then
    source $ASDF_EXEC
fi

eval "$(starship init zsh)"
