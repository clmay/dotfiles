# common
export CLICOLOR=1

export GOPATH=$HOME/.go

export HOMEBREW_BUNDLE_INSTALL_CLEANUP=1
export HOMEBREW_BUNDLE_NO_LOCK=true
export HOMEBREW_NO_ANALYTICS=1

export KERL_CONFIGURE_OPTIONS=--without-javac

export VISUAL=/usr/local/bin/code

if [[ $(uname -n) != clm-mac.local ]]; then
    export HOMEBREW_BUNDLE_FILE=~/.config/brew/Brewfile.work
else
    export HOMEBREW_BUNDLE_FILE=~/.config/brew/Brewfile.personal
    export HOMEBREW_CASK_OPTS=--appdir=~/Applications
fi
