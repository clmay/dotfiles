zstyle ':compinstall' filename '/Users/chase.may/.zshrc'
# case-insensitive matching in  completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
# enable arrow keys in completion menu
zstyle ':completion:*:*:*:*:*' menu select

autoload -Uz compinit && compinit

autoload -Uz add-zsh-hook
add-zsh-hook chpwd auto_ls
auto_ls() { ls -a; }

setopt auto_cd
setopt hist_ignore_all_dups
plugins=(zsh-completions)

files=(
    ~/.config/zsh/aliases.sh
    ~/.config/zsh/secrets.sh
)

for file in $files; do
    test -f $file && source $file
done

if [[ $(uname -m) == "arm64" ]]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ $(uname -m) == "x86_64" ]]; then
    eval "$(/usr/local/bin/brew shellenv)"
fi

ASDF_EXEC="$HOMEBREW_PREFIX/libexec/asdf.sh"
test -f $ASDF_EXEC && source $ASDF_EXEC

eval "$(starship init zsh)"
