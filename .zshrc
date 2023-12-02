zstyle ':compinstall' filename '/Users/chase.may/.zshrc'
# case-insensitive matching in  completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# enable arrow keys in completion menu
zstyle ':completion:*:*:*:*:*' menu select

autoload -Uz compinit && compinit

autoload -Uz add-zsh-hook
add-zsh-hook chpwd auto_ls
auto_ls() { ls -l; }

setopt auto_cd
setopt hist_ignore_all_dups
plugins=(zsh-completions)

for file in aliases secrets; do
    test -f ~/.config/zsh/$file.sh && source ~/.config/zsh/$file.sh
done

if [[ $(uname -m) = arm64 ]]; then
    eval $(/opt/homebrew/bin/brew shellenv)
elif [[ $(uname -m) = x86_64 ]]; then
    eval $(/usr/local/bin/brew shellenv)
fi

eval $(starship init zsh)

source $(brew --prefix asdf)/libexec/asdf.sh
source $HOME/.config/asdf-direnv/zshrc
