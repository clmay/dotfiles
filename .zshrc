# Prompt
# ======
autoload -U promptinit; promptinit
prompt pure

# Aliases
# =======

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
export PATH="$GOBIN:$PATH"

# Homebrew
# ========
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
export HOMEBREW_BUNDLE_NO_LOCK=true

# NVM
# ===

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

# Ruby
# =====
if which rbenv > /dev/null; then
  eval "$(rbenv init -)";
fi

export RSPEC_RETRY_RETRY_COUNT=0

# VS Code
# =======
export VISUAL="/usr/local/bin/code"

# Profiling
# =========

# Enable profiling with:
# zmodload zsh/zprof

# Measure shell load time with:
# 5x {time zsh -i -c exit}
