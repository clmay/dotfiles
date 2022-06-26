zstyle :compinstall filename '/Users/chase.may/.zshrc'

# enable arrow keys in completion menu
zstyle ':completion:*:*:*:*:*' menu select

# case-insensitive matching in  completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

autoload -Uz compinit && compinit
autoload -Uz add-zsh-hook
plugins=(zsh-completions)
setopt auto_cd
setopt hist_ignore_all_dups

add-zsh-hook chpwd chpwd_auto_ls
chpwd_auto_ls() { ls -a; }

export CLICOLOR=1
export GOPATH="$HOME/.go"
export HOMEBREW_BUNDLE_FILE="~/.config/brew/Brewfile"
export HOMEBREW_BUNDLE_NO_LOCK=true
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
export KERL_CONFIGURE_OPTIONS="--disable-debug --without-javac"
export VISUAL="/usr/local/bin/code"
export WORDCHARS='&'

export PATH="$GOPATH/bin:/usr/local/sbin:$PATH"

eval "$(starship init zsh)"
[ -f $(brew --prefix asdf)/libexec/asdf.sh ] && echo $(brew --prefix asdf)/libexec/asdf.sh
[ -f ~/.aliases ] && source ~/.aliases

