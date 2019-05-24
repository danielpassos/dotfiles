#!/bin/bash

zsh_mac ()
{
	# Install Brew
	type brew >/dev/null 2>&1 || {
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	}

	# Install iTerm2
	if [ ! -d /Applications/iTerm.app ]; then
	    brew cask install iterm2
	fi

	# Install zsh
	type zsh >/dev/null 2>&1 || {
		brew install zsh
	}

	# Install oh-my-zsh
	if [ ! -d ~/.oh-my-zsh/ ]; then
	    curl -O https://raw.githubusercontent.com/MartinSeeler/iterm2-material-design/master/material-design-colors.itermcolors
	fi

	# Install powerlevel9k
	if [ ! -d /usr/local/opt/powerlevel9k/ ]; then
	    brew tap sambadevi/powerlevel9k && brew install powerlevel9k
	fi

	# Install zsh-autosuggestions
	if [ ! -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
	    brew install zsh-autosuggestions
	fi

	# Install colorsls
	type zsh >/dev/null 2>&1 || {
		gem install colorls
	}

	cp ./zsh/zshrc ~/.zshrc
}

if [[ "$OSTYPE" == "darwin"* ]]; then
	echo "Configuring zsh"
	zsh_mac
else
    echo "This script is not ready to install zsh in your os yet"        
fi
