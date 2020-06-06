# Antigen
# Install with "brew install antigen"
source /usr/local/share/antigen/antigen.zsh
antigen init $HOME/.antigenrc

# nvm
source $HOME/.zsh/nvm-zsh-hook

# Google Cloud SDK
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc

alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
