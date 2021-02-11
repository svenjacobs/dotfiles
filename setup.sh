#!/usr/bin/env sh

# bin
ln -sr $HOME/.dotfiles/bin $HOME/bin &>/dev/null

# Git
ln -sr $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig &>/dev/null
ln -sr $HOME/.dotfiles/git/gitignore_global $HOME/.gitignore_global &>/dev/null

# Zsh
ln -sr $HOME/.dotfiles/zsh/zprofile $HOME/.zprofile &>/dev/null
ln -sr $HOME/.dotfiles/zsh/zshenv $HOME/.zshenv &>/dev/null
ln -sr $HOME/.dotfiles/zsh/zshenv.secret $HOME/.zshenv.secret &>/dev/null
ln -sr $HOME/.dotfiles/zsh/zshrc $HOME/.zshrc &>/dev/null
ln -sr $HOME/.dotfiles/zsh/antigenrc $HOME/.antigenrc &>/dev/null

# Hyper
ln -sr $HOME/.dotfiles/hyper/hyper.js $HOME/.hyper.js &>/dev/null

# Vim
mkdir -p $HOME/.vim
ln -sr $HOME/.dotfiles/vim/vimrc $HOME/.vimrc &>/dev/null
ln -sr $HOME/.dotfiles/vim/pack $HOME/.vim/pack &>/dev/null

# Nvm
mkdir -p $HOME/.nvm
ln -sr $HOME/.dotfiles/nvm/default-packages $HOME/.nvm/default-packages &>/dev/null

cd $HOME/.dotfiles
git submodule update --init --recursive
