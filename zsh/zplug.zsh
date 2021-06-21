#!/usr/bin/env zsh

source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

zplug "plugins/common-aliases", from:oh-my-zsh
zplug "plugins/autojump", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/command-not-found", from:oh-my-zsh
zplug "plugins/direnv", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/gradle", from:oh-my-zsh
zplug "plugins/iterm2", from:oh-my-zsh
zplug "plugins/sdk", from:oh-my-zsh
zplug "plugins/npm", from:oh-my-zsh
zplug "plugins/nvm", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/thefuck", from:oh-my-zsh

zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-autosuggestions"
zplug 'zsh-users/zsh-completions', depth:1

zplug "jeffreytse/zsh-vi-mode"

zplug "themes/robbyrussell", from:oh-my-zsh, as:theme

zplug load

