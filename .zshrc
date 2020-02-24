# The following lines were added by compinstall
zstyle :compinstall filename '/Users/chase.may/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

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
alias rc='bundle exec rubocop'
alias pr='bundle exec parallel_rspec --serialize-stdout -n 8'
alias ps='bundle exec parallel_split_test'


alias dev='APP_ENV=DEV'
alias prod='APP_ENV=PROD'
alias qa='APP_ENV=QA'

alias nd='DOCKER=false'

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
