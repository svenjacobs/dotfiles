## Zsh
fpath+=~/.zfunc

setopt auto_cd
setopt share_history
setopt auto_pushd
setopt hist_expire_dups_first
setopt hist_reduce_blanks
setopt hist_verify
zstyle ':completion:*' menu select

## Zinit
source $HOME/.zsh/zinit.zsh

## Google Cloud SDK
source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc
source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc

## Aliases
alias ls="lsd"
alias rm="rm -I"
alias f="fuck"
alias s="kitty +kitten ssh"
alias config="$(which git) --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias ncu="pkgx npx npm-check-updates@latest --"

## Miscellaneous
source $HOME/.zsh/inc/zsh-autosuggestions-paste-fix.zsh

## pnpm / tabtab
# Install / update tab completion with "pnpm install-completion zsh"
[[ -f ~/.config/tabtab/zsh/__tabtab.zsh ]] && . ~/.config/tabtab/zsh/__tabtab.zsh || true

## 1Password CLI
eval "$(op completion zsh)"; compdef _op op

## Android development
deeplink() {
    echo "Launching deep link: $1"
    adb shell am start -a android.intent.action.VIEW -d "'$1'"
}

# pkgx
# docs.pkgx.sh/shellcode
source <(pkgx --shellcode)

# sdkman
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

