# Remove old version

rm -rf ~/.dotfiles

# Bash Files

if [ -f ~/.bashrc ]; then
	mv ~/.bashrc ~/.bashrc.ori
fi

if [ ! -f ~/.local_config.sh ]; then
	touch ~/.local_config.sh
fi

if [ "$OSTYPE" == "darwin"* ] && [ ! -e /etc/launchd.conf ]; then
	sudo touch /etc/launchd.conf
fi

# Install bash files

mkdir -p ~/.dotfiles/bash
mkdir -p ~/.dotfiles/bin

cp ./bash/*         ~/.dotfiles/bash/

cp ./bashrc         ~/.dotfiles/
cp ./bash_profile   ~/.dotfiles/

ln -sf ~/.dotfiles/bashrc        ~/.bashrc
ln -sf ~/.dotfiles/bash_profile  ~/.bash_profile

# tmux

cp ./tmux/tmux.conf ~/.tmux.conf

# Git

if [ ! -f ~/.gitconfig ]; then
	cp ./git/gitconfig ~/.gitconfig
fi 

if [ ! -f ~/.gitignore ]; then
	cp ./git/gitignore ~/.gitignore
	git config --global core.excludesfile ~/.gitignore
fi 
