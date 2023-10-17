alias ga='git add'
alias gau='git add -u'
alias gb='git branch'
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

alias pwt='npx playwright test'
alias pwtd='npx playwright test --debug'
alias pwth='npx playwright test --headed'
alias pwtr='npx playwright show-report'

gbd() { git branch --list "$@*" | xargs -r git branch -D; }

grh() { git reset --hard HEAD~"$@"; }
grs() { git reset --soft HEAD~"$@"; }

wu() {
    while [ $(date "+%H") -lt 17 ]; do
        cliclick m:+1,+1 m:-1,-1
        sleep 60
    done
}

ww() {
    wu &
}
