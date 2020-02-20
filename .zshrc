# Prompt
# ======
autoload -U promptinit; promptinit
prompt pure

# Aliases
# =======

dsrm () {
  find . -path './Library' -prune -o -path './.Trash' -prune -o -name '.DS_Store' -exec rm -f {} \;
}

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
alias gpu='git push -u origin HEAD'
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

# repeat
alias 5x='repeat 5'
alias 10x='repeat 10'
alias 50x='repeat 50'


# O.C. Tanner aliases
# ===================

alias rs='bundle exec rspec'
# alias rc='bundle exec rubocop'

alias nd='DOCKER=false'

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


# RSpec
# =====
export RSPEC_RETRY_RETRY_COUNT=0

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
