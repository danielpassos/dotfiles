# Remove old version
rm -rf ~/.bin/dotfiles

# Bash Files

cp ./.bash_profile ~/

mkdir -p ~/.bin/dotfiles/bash
cp ./bashrc  ~/.bin/dotfiles/
cp ./bash/* ~/.bin/dotfiles/bash/

# Scripts Files

mkdir -p ~/.bin/dotfiles/script
cp ./script/* ~/.bin/dotfiles/script/

# Links

ln -sf ~/.bin/dotfiles/bashrc ~/.bashrc

# Git

cp ./git/gitconfig ~/.gitconfig
cp ./git/gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore