#!/bin/bash

zsh_mac ()
{

	# Install RVM
	if [ ! -d ~/.rvm ]; then
		\curl -sSL https://get.rvm.io | bash -s stable
		source ~/.bashrc
		rvm install ruby
		rvm --default use ruby
	fi

	# Install Brew
	if [ ! -x "$(command -v brew)" ]; then
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" >> /dev/null
	fi	

	# Install iTerm2
	if [ ! -d /Applications/iTerm.app ]; then
	    brew cask install iterm2 >> /dev/null
	fi

	# Install zsh
	if [ ! -x "$(command -v zsh)" ]; then
		brew install zsh >> /dev/null
	fi

	# Install oh-my-zsh
	if [ ! -d ~/.oh-my-zsh/ ]; then
	    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" >> /dev/null
	fi

	# Install powerlevel9k
	if [ ! -d /usr/local/opt/powerlevel9k/ ]; then
	    brew tap sambadevi/powerlevel9k >> /dev/null
	    brew install powerlevel9k >> /dev/null
	fi

	# Install zsh-autosuggestions
	if [ ! -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
	    brew install zsh-autosuggestions >> /dev/null
	fi

	# Install colorls
	if [ ! -x "$(command -v colorls)" ]; then
		gem install colorls >> /dev/null
	fi

	cp ./zsh/zshrc ~/.zshrc
}

if [[ "$OSTYPE" == "darwin"* ]]; then
	echo "Configuring zsh"
	zsh_mac
else
    echo "This script is not ready to install zsh in your os yet"        
fi
