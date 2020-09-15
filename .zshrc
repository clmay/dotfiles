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
# compinstall
zstyle :compinstall filename '/Users/chase.may/.zshrc'
autoload -Uz compinit && compinit
# end compinstall

# `<dirname>`` == `cd <dirname>`
setopt auto_cd

# enable arrow keys in completion menu
zstyle ':completion:*:*:*:*:*' menu select
# case-insensitive matching in  completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

export CLICOLOR=1
export WORDCHARS=''

# use Starship prompt
eval "$(starship init zsh)"

# Aliases/functions
# =================

# ls
alias la='ls -a'

# misc
dsrm() {
  find . -path './Library' -prune -o -path './.Trash' -prune -o -name '.DS_Store' -exec rm -f {} \;
}

# Secrets
# =======
if [ -f ~/.secrets ]; then
  source ~/.secrets
fi

# Miscellany
# ==========

# Go
# ---
export GOPATH="$HOME/.go"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"

# Homebrew
# --------
export HOMEBREW_CASK_OPTS="--appdir=~/Applications"
export HOMEBREW_BUNDLE_NO_LOCK=true

case $(hostname -s) in
clmay-mac) export HOMEBREW_BUNDLE_FILE="~/.config/Brewfile.personal" ;;
esac

# Haskell
# -------
# export PATH="$HOME/.local/bin:$PATH" # for Stack

# Node
# ----
# from https://www.reddit.com/r/node/comments/4tg5jg/lazy_load_nvm_for_faster_shell_start/d5ib9fs/
declare -a NODE_GLOBALS=($(find ~/.nvm/versions/node -maxdepth 3 -type l -wholename '*/bin/*' | xargs -n1 basename | sort | uniq))

NODE_GLOBALS+=("node")
NODE_GLOBALS+=("nvm")

load_nvm() {
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh" # This loads nvm
}

for cmd in "${NODE_GLOBALS[@]}"; do
  eval "${cmd}(){ unset -f ${NODE_GLOBALS}; load_nvm; ${cmd} \$@ }"
done

# Python
# ------
# export PATH="$HOME/Library/Python/3.7/bin:$PATH"      # for pipenv
# export PATH="/usr/local/opt/python/libexec/bin:$PATH" # for homebrew Python

# rbenv
# -----
eval "$(rbenv init -)"

# RSpec
# -----
export RSPEC_RETRY_RETRY_COUNT=0

# Rust
# ----
export PATH="$HOME/.cargo/bin:$PATH"

# TaaS
# ----
export TAAS_BETA=true

# Vault
# -----
export VAULT_ADDR="https://vault.octanner.net"

# VS Code
# -------
export VISUAL="/usr/local/bin/code"
