# PATH is extended here because this file is sourced after /etc/profile.
# /etc/profile calls path_helper which reorders PATH so we must customize PATH afterwards.

# Ensures that path array does not contain duplicates
typeset -U path
path=(
    /opt/homebrew/opt/coreutils/libexec/gnubin
    /opt/homebrew/opt/findutils/libexec/gnubin
    /opt/homebrew/opt/gnu-sed/libexec/gnubin
    /opt/homebrew/opt/grep/libexec/gnubin
    /opt/homebrew/opt/ruby/bin
    $path
    $HOME/bin
    $ANDROID_HOME/cmdline-tools/latest/bin
    $ANDROID_HOME/emulator
    $ANDROID_HOME/platform-tools
    $VOLTA_HOME/bin
    $FLUTTER_HOME/bin
    $HOME/.pub-cache/bin
)
export PATH

eval "$(/opt/homebrew/bin/brew shellenv)"
