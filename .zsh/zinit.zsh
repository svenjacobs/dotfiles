#!/usr/bin/env zsh
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

## End of Zinit's installer chunk

zinit light zsh-users/zsh-autosuggestions
zinit ice depth"1"; zinit light zsh-users/zsh-completions
zinit light zdharma-continuum/fast-syntax-highlighting
zinit light jeffreytse/zsh-vi-mode

zinit snippet OMZL::functions.zsh
zinit snippet OMZP::autojump
zinit snippet OMZP::brew
zinit snippet OMZP::command-not-found
zinit snippet OMZP::common-aliases
zinit snippet OMZP::direnv
zinit snippet OMZP::git
zinit snippet OMZP::gradle
zinit ice svn; zinit snippet OMZP::macos
zinit snippet OMZP::npm
zinit snippet OMZP::sdk
zinit snippet OMZP::thefuck
zinit snippet OMZP::web-search

# starship theme
# https://github.com/starship/starship
zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship

# Install jq, required for "zinit pack"
zinit for \
    from'gh-r' \
    sbin'* -> jq' \
    nocompile \
  @jqlang/jq

# LS_COLORS
zinit pack for ls_colors

