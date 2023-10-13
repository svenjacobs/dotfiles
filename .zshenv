# PATH is extended in .zprofile

export ANDROID_HOME="$HOME/Library/Android/sdk"
export DEV_HOME="$HOME/Developer"
export EDITOR="/opt/homebrew/bin/vim"
export FLUTTER_HOME="$FVM_HOME/default"
export FVM_HOME="$HOME/.fvm"
export GPG_TTY=$(tty)
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

source "$HOME/.cargo/env"

# .zshenv.secret contains sensitive environment variables with API keys etc.
source "$HOME/.zshenv.secret"

