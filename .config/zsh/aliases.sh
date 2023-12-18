+x() { chmod +x "$@"; }

alias ga='git add'
alias gau='git add -u'
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

gbda() {
    git branch -D $(git branch | grep "$@")
}

grh() { git reset --hard HEAD~"$@"; }
grs() { git reset --soft HEAD~"$@"; }

alias la='ls -a'
alias ll='ls -l'

alias pwt='npx playwright test'
alias pwtd='npx playwright test --debug'
alias pwth='npx playwright test --headed'
alias pwtr='npx playwright show-report'

ww() {
    while true; do
        if [ $(date +%H) -ge 05 ] && [ $(date +%H) -lt 17 ]; then
            cliclick m:+1,+1 m:-1,-1
            sleep 600
        fi
    done &
}
