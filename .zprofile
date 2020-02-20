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

# Rust
# ====
export PATH="$HOME/.cargo/bin:$PATH"
