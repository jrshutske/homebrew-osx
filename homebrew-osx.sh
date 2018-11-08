#!/usr/bin/env bash
# 
# script for setting up a new OSX machine
# 
# free to run multiple times without issues
#

echo "starting script..."

# check for Homebrew, install if we don't have it
if test ! $(which brew); then
    echo "installing homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# update homebrew recipes
echo "updating homebrew..."
brew update

# install bash 4
echo "installing bash..."
brew install bash

# install various packages
packages=(
    ffmpeg
    wget
    npm
    ssh-copy-id
    vim
)

echo "installing various packages..."
brew install ${packages[@]}

echo "cleaning time!!!"
brew cleanup

# install ruby gems
echo "installing ruby gems..."
rubygems=(
    bundler
)
sudo gem install ${rubygems[@]}

