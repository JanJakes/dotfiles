#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

xcode-select —-install
command -v brew >/dev/null 2>&1 || ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

[[ -n $(brew ls brew-cask --versions) ]] || brew install caskroom/cask/brew-cask
brew update && brew cask update && brew cleanup && brew cask cleanup
brew tap caskroom/versions

[[ -n $(brew ls git --versions) ]] || brew install git
[[ -n $(brew ls mercurial --versions) ]] || brew install mercurial

[[ -n $(brew ls boot2docker --versions) ]] || brew install boot2docker
[[ -n $(brew ls docker --versions) ]] || brew install docker
[[ -n $(brew ls fig --versions) ]] || brew install fig

brew cask ls sublime-text3 >/dev/null 2>&1 || brew cask install sublime-text3
brew cask ls google-chrome >/dev/null 2>&1 || brew cask install google-chrome
brew cask ls karabiner >/dev/null 2>&1 || brew cask install karabiner
brew cask ls iterm2 >/dev/null 2>&1 || brew cask install iterm2
brew cask ls slack >/dev/null 2>&1 || brew cask install slack
brew cask ls skype >/dev/null 2>&1 || brew cask install skype

brew cask ls virtualbox >/dev/null 2>&1 || brew cask install virtualbox
brew cask ls vagrant >/dev/null 2>&1 || brew cask install vagrant
brew cask ls sourcetree >/dev/null 2>&1 || brew cask install sourcetree
brew cask ls kdiff3 >/dev/null 2>&1 || brew cask install kdiff3

brew cask ls java >/dev/null 2>&1 || brew cask install java
brew cask ls netbeans-php >/dev/null 2>&1 || brew cask install netbeans-php

brew cask ls spotify >/dev/null 2>&1 || brew cask install spotify

# php & composer
brew tap homebrew/dupes
brew tap homebrew/php
brew install php56
brew install composer

#cp ~/dotfiles/osx/keyboard-layouts /Library/Keyboard\ Layouts/

# final cleanup
brew cleanup && brew cask cleanup

# zsh
sh zsh/install.sh

# install fonts
cp ~/dotfiles/fonts/* /Library/Fonts/
