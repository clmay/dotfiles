zstyle :compinstall filename '/Users/chase.may/.zshrc'

plugins=(zsh-completions)
autoload -Uz compinit && compinit
autoload -U add-zsh-hook add-zsh-hook -Uz chpwd() { ls -a; }

setopt auto_cd
setopt hist_ignore_all_dups

# enable arrow keys in completion menu
zstyle ':completion:*:*:*:*:*' menu select
# case-insensitive matching in  completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

eval "$(starship init zsh)"

export CLICOLOR=1
export GOPATH="$HOME/.go"
export HOMEBREW_BUNDLE_FILE="~/.config/brew/Brewfile"
export HOMEBREW_BUNDLE_NO_LOCK=true
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
export PATH="$GOPATH/bin:$PATH"
export VISUAL="/usr/local/bin/code"
export WORDCHARS='&'

source /usr/local/opt/asdf/libexec/asdf.sh

alias ga='git add'
alias gb='git branch'
alias gbd='git branch -D'
alias gcb='git checkout -b'
alias gcl='git clone'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcom='git checkout main'
alias gd='git diff'
alias gf='git fetch'
alias gl='git log'
alias gm='git merge'
alias gmm='git merge main'
alias gp='git push'
alias gpl='git pull'
alias gps='git push --set-upstream origin HEAD'
alias gr='git reset'
alias gs='git status'
alias la='ls -a'

dsrm() {
  find . -path './Library' \
    -prune -o -path './.Trash' \
    -prune -o -name '.DS_Store' \
    -exec rm -f {} \;
}

grh() { git reset --hard HEAD~"$@"; }
grs() { git reset --soft HEAD~"$@"; }
