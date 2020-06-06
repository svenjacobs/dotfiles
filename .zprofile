# PATH is extended here because this file is sourced after /etc/profile.
# /etc/profile calls path_helper which reorders PATH so we must customize PATH afterwards.

# Ensures that path array does not contain duplicates
typeset -U path
path=(
    /usr/local/opt/coreutils/libexec/gnubin
    /usr/local/opt/findutils/libexec/gnubin
    $path
    $HOME/bin
    $FLUTTER_HOME/bin
    $HOME/.gem/ruby/2.6.0/bin
)
export PATH
