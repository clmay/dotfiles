#
# Executes commands at the start of an interactive session.
#

# Prezto
# ======

if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


# Personal aliases
# ================

# Remove .DS_Store files
alias dsrm="find . -name '.DS_Store' -type f -delete"

# g++

alias g++='g++ -Wall -std=c++11'

# git
alias ga='git add'
alias gb='git branch'
alias gbd='git branch -D'
alias gcl='git clone'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcm='git commit -m'
alias gd='git diff'
alias gl='git log'
alias gm='git merge'
alias gmv='git mv'
alias gp='git push'
alias gpl='git pull'
alias gpu='git push -u origin HEAD'
alias gr='git reset'
alias grm='git rm'
alias gs='git status'

grs () {
  git reset --soft HEAD~$1
}

grh () {
  git reset --hard HEAD~$1
}

# ls
alias la='ls -a'

# repeat
alias 5x='repeat 5'
alias 10x='repeat 10'
alias 50x='repeat 50'


# O.C. Tanner aliases
# ===================

alias rs='bundle exec rspec'
alias rc='bundle exec rubocop'

alias rd='APP_ENV=DEV rspec'
alias rp='APP_ENV=PROD rspec'
alias rq='APP_ENV=QA rspec'

alias prs='parallel_rspec --serialize-stdout -n 8'
alias prd='APP_ENV=DEV parallel_rspec --serialize-stdout -n 8'
alias prp='APP_ENV=PROD parallel_rspec --serialize-stdout -n 8'
alias prq='APP_ENV=QA parallel_rspec --serialize-stdout -n 8'

alias psd='APP_ENV=DEV parallel_split_test'
alias psp='APP_ENV=PROD parallel_split_test'
alias psq='APP_ENV=QA parallel_split_test'

alias rkd='APP_ENV=DEV rake'
alias rkp='APP_ENV=PROD rake'
alias rkq='APP_ENV=QA rake'

# Go
# ==

export GOPATH="$HOME/.go"
export GOBIN="$GOPATH/bin"
export PATH="$GOPATH/bin:$PATH"


# Haskell
# =======

export PATH="$HOME/.local/bin:$PATH" # for Stack


# Heroku
# ======

HEROKU_AC_ZSH_SETUP_PATH=/Users/clmay/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;


# Homebrew
# ========

export HOMEBREW_CASK_OPTS="--appdir=~/Applications"


# NVM
# ===

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion


# OpenSSL
# =======

export PATH="/usr/local/opt/openssl/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig:usr/local/lib/pkgconfig"


# Python
# ======

export PATH="$HOME/Library/Python/3.7/bin:$PATH" # for pipenv
export PATH="/usr/local/opt/python/libexec/bin:$PATH" # for homebrew Python

# Ruby
# =====

if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl)"
export RSPEC_RETRY_RETRY_COUNT=0

# Rust
# ====

export PATH="$HOME/.cargo/bin:$PATH"

# VS Code
# =======

export VISUAL="/usr/local/bin/code"
