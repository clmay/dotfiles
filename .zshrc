# repeat 5 { time zsh -i -c exit }
# zmodload zsh/zprof

zstyle :compinstall filename '/Users/chase.may/.zshrc'

fpath=(~/.zsh_completions $fpath)
autoload -Uz compinit && compinit

setopt auto_cd
setopt hist_ignore_all_dups

# enable arrow keys in completion menu
zstyle ':completion:*:*:*:*:*' menu select
# case-insensitive matching in  completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# ENV setup
# =========
export CLICOLOR=1
export WORDCHARS='&'

# Starship
# ========
eval "$(starship init zsh)"

# Aliases/functions
# =================

# git
# ---
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

grh() {
  git reset --hard HEAD~"$@"
}

grs() {
  git reset --soft HEAD~"$@"
}

# ls
# --
alias la='ls -a'

# misc
# ----
dsrm() {
  find . -path './Library' -prune -o -path './.Trash' -prune -o -name '.DS_Store' -exec rm -f {} \;
}

# Tooling
# =======

# Confluent
# ---------
export CONFLUENT_HOME="$HOME/.confluent/6.0.0"
export PATH="$PATH:$CONFLUENT_HOME/bin"

# Go
# ---
export GOPATH="$HOME/.go"

# Homebrew
# --------
export HOMEBREW_BUNDLE_FILE="~/.config/Brewfile"
export HOMEBREW_BUNDLE_NO_LOCK=true
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"

# VS Code
# -------
export VISUAL="/usr/local/bin/code"

# Secrets
# -------
source ~/.secrets

# asdf (must go at end)
# ---------------------
source /usr/local/opt/asdf/asdf.sh
eval "$(asdf exec direnv hook zsh)"
direnv() { asdf exec direnv "$@"; }
