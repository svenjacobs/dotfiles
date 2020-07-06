# My dotfiles (UNIX/macOS configuration)

Configuration is provided for the following applications:

* [Zsh](http://zsh.sourceforge.net/)
* [Vim](https://www.vim.org/)
* [Hyper](https://hyper.is/)
* [Nvm](https://github.com/nvm-sh/nvm/)

## How to set up dotfiles

Install required software:

```
brew install zsh
brew install autojump
brew install antigen
brew install vim
brew install jenv
brew cask install hyper
```

then:

1) `git clone git@github.com:svenjacobs/dotfiles.git $HOME/.dotfiles`
2) `$HOME/.dotfiles/setup.sh`

### TODOs after setup

* Install [nvm](https://github.com/nvm-sh/nvm)
* Configure `JAVA_HOME` with [jenv](https://github.com/jenv/jenv)
  ```
  jenv enable-plugin export
  ```
* Install npm-merge-driver
  ```
  npx npm-merge-driver install --global
  ```

