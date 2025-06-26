# common
export CLICOLOR=1

export GOPATH=$HOME/.go

export HOMEBREW_BUNDLE_INSTALL_CLEANUP=1
export HOMEBREW_BUNDLE_NO_LOCK=true
export HOMEBREW_NO_ANALYTICS=1
if [[ $(uname -n) != clm-mac.local ]]; then
    export HOMEBREW_BUNDLE_FILE=~/.config/brew/Brewfile.work
else
    export HOMEBREW_BUNDLE_FILE=~/.config/brew/Brewfile.personal
    export HOMEBREW_CASK_OPTS=--appdir=~/Applications
fi

export KERL_CONFIGURE_OPTIONS=--without-javac

export VISUAL=/usr/local/bin/code

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_STATE_HOME="$HOME/.local/state"
