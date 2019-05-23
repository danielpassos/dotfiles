# Remove old version

rm -rf ~/.dotfiles

# Bash Files

if [ ! -f ~/.local_config.sh ]; then
	touch ~/.local_config.sh
fi

# Install bash files

mkdir -p ~/.dotfiles/bash
mkdir -p ~/.dotfiles/bin

cp ./bash/*         ~/.dotfiles/bash/

cp ./bashrc         ~/.dotfiles/
cp ./bash_profile   ~/.dotfiles/

ln -sf ~/.dotfiles/bashrc        ~/.bashrc
ln -sf ~/.dotfiles/bash_profile  ~/.bash_profile

# Git

if [ ! -f ~/.gitconfig ]; then
	cp ./git/gitconfig ~/.gitconfig
fi 

# ZSH

cp ./zsh/zshrc ~/.zshrc