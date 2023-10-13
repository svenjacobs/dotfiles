# Dotfiles

My UNIX / macOS and application configuration based on a 
[bare Git repository](https://www.atlassian.com/git/tutorials/dotfiles).

```
git clone --bare git@github.com:svenjacobs/dotfiles.git $HOME/.dotfiles
alias config='/opt/homebrew/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config checkout
config submodules init
config submodules update
config config --local status.showUntrackedFiles no
```

