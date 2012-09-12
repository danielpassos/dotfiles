# Remove old version
rm -rf ~/.dotfiles

# Bash Files

if [ ! -e ~/.bashrc.ori ]; then
	mv ~/.bashrc ~/.bashrc.ori
fi

if [ ! -e ~/.local_config ]; then
	touch ~/.local_config
fi

cp ./.bash_profile ~/

mkdir -p ~/.dotfiles/bash
cp ./bashrc  ~/.dotfiles/
cp ./bash/* ~/.dotfiles/bash/

# Scripts Files

mkdir -p ~/.dotfiles/script
cp ./script/* ~/.dotfiles/script/

# Links

ln -sf ~/.dotfiles/bashrc ~/.bashrc

# Git

cp ./git/gitconfig ~/.gitconfig
cp ./git/gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore