# Remove old version
rm -rf ~/.dotfiles

# Bash Files

if [ ! -e ~/.bashrc.ori ] && [ -e ~/.bashrc ]; then
	mv ~/.bashrc ~/.bashrc.ori
fi

if [ ! -e ~/.local_config ]; then
	touch ~/.local_config
fi

if [[ "$OSTYPE" == "darwin"* ]] && [ ! -e /etc/launchd.conf ]; then
	sudo touch /etc/launchd.conf
fi

# Install bash files

mkdir -p ~/.dotfiles/bash
mkdir -p ~/.dotfiles/script
mkdir -p ~/.dotfiles/bin

cp ./bash/*         ~/.dotfiles/bash/
cp ./script/*       ~/.dotfiles/script/

cp ./bashrc         ~/.dotfiles/
cp ./bash_profile   ~/.dotfiles/

ln -sf ~/.dotfiles/bashrc        ~/.bashrc
ln -sf ~/.dotfiles/bash_profile  ~/.bash_profile

# tmux
cp ./tmux/tmux.conf ~/.tmux.conf

# Git

cp ./git/gitconfig ~/.gitconfig
cp ./git/gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore