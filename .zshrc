# Profiling
# =========

# Enable profiling with:
# zmodload zsh/zprof
# Then run:
# zprof

# Measure shell load time with:
# 5x {time zsh -i -c exit}

# Shell config
# ============
zstyle :compinstall filename '/Users/chase.may/.zshrc'
setopt auto_cd
# enable arrow keys in completion menu
zstyle ':completion:*:*:*:*:*' menu select
# case-insensitive matching in  completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

export CLICOLOR=1
export WORDCHARS=''

# Starship
# --------
eval "$(starship init zsh)"

# Aliases/functions
# =================

# git
alias ga='git add'
alias gb='git branch'
alias gd='git diff'
alias gl='git log'
alias gp='git push'
alias gr='git reset'
alias gs='git status'
alias gbd='git branch -d'
alias gcb='git checkout -b'
alias gcl='git clone'
alias gcm='git commit -m'
alias gco='git checkout'
alias gpl='git pull'
alias gps='git push --set-upstream origin HEAD'

grh() {
  git reset --hard HEAD~$1
}

grs() {
  git reset --soft HEAD~$1
}

# ls
alias la='ls -a'

# misc
dsrm() {
  find . -path './Library' -prune -o -path './.Trash' -prune -o -name '.DS_Store' -exec rm -f {} \;
}

# Miscellany
# ==========

# Go
# ---
export GOPATH="$HOME/.go"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"

# Homebrew
# --------

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
export HOMEBREW_BUNDLE_NO_LOCK=true

case $(hostname -s) in
*)
  export HOMEBREW_BUNDLE_FILE="~/.config/Brewfile"
  ;;
esac

# VS Code
# -------
export VISUAL="/usr/local/bin/code"

# asdf
# ----
# (must go at the end, in this order)

. $(brew --prefix asdf)/asdf.sh

if type asdf &>/dev/null; then
  FPATH=(${ASDF_DIR}/completions $FPATH)
fi

autoload -Uz compinit
compinit
