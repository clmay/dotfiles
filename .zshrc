# The following lines were added by compinstall
zstyle :compinstall filename '/Users/chase.may/.zshrc'

autoload -Uz compinit; compinit
# End of lines added by compinstall

# Prompt
# ======
eval "$(starship init zsh)"
export CLICOLOR=1
export WORDCHARS=''

# Aliases/functions
# =================

# cd
alias ..='cd ..'

# g++
alias g++='g++ -Wall -std=c++11'

# git
alias ga='git add'
alias gb='git branch'
alias gbd='git branch -D'
alias gcb='git checkout -b'
alias gcl='git clone'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcom='git checkout master'
alias gd='git diff'
alias gl='git log'
alias gm='git merge'
alias gmm='git merge master'
alias gmv='git mv'
alias gp='git push'
alias gpl='git pull'
alias gps='git push -u origin HEAD'
alias gr='git reset'
alias grm='git rm'
alias gs='git status'

grs () {
  git reset --soft HEAD~"$1"
}

grh () {
  git reset --hard HEAD~"$1"
}

# ls
alias la='ls -a'


# misc
dsrm () {
  find . -path './Library' -prune -o -path './.Trash' -prune -o -name '.DS_Store' -exec rm -f {} \;
}

# repeat
alias 5x='repeat 5'
alias 10x='repeat 10'
alias 50x='repeat 50'

# O.C. Tanner aliases
# ===================
alias rs='bundle exec rspec'
alias rc='bundle exec rubocop'

alias dev='APP_ENV=DEV'
alias prod='APP_ENV=PROD'
alias qa='APP_ENV=QA'

alias nd='DOCKER=false'

# Secrets
# =======
if [ -f ~/.secrets ]; then
  source ~/.secrets
fi

# Go
# ==
export GOPATH="$HOME/.go"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"

# Homebrew
# ========
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
export HOMEBREW_BUNDLE_NO_LOCK=true

# Haskell
# =======
export PATH="$HOME/.local/bin:$PATH" # for Stack

# Node
# ====
# from https://www.reddit.com/r/node/comments/4tg5jg/lazy_load_nvm_for_faster_shell_start/d5ib9fs/
declare -a NODE_GLOBALS=(`find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq`)

NODE_GLOBALS+=("node")
NODE_GLOBALS+=("nvm")

load_nvm () {
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
}

for cmd in "${NODE_GLOBALS[@]}"; do
    eval "${cmd}(){ unset -f ${NODE_GLOBALS}; load_nvm; ${cmd} \$@ }"
done

# Python
# ======
export PATH="$HOME/Library/Python/3.7/bin:$PATH" # for pipenv
export PATH="/usr/local/opt/python/libexec/bin:$PATH" # for homebrew Python

# rbenv
# =====
if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

# RSpec
# =====
export RSPEC_RETRY_RETRY_COUNT=0

# Rust
# ====
export PATH="$HOME/.cargo/bin:$PATH"

# TaaS
# ====
export TAAS_BETA=true

# Vault
# =====
export VAULT_ADDR="https://vault.octanner.net"

# VS Code
# =======
export VISUAL="/usr/local/bin/code"

# Profiling
# =========

# Enable profiling with:
# zmodload zsh/zprof
# Then run:
# zprof

# Measure shell load time with:
# 5x {time zsh -i -c exit}
