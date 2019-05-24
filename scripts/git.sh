#!/bin/bash

echo "Configuring git"

if [ ! -f ~/.gitconfig ]; then
	cp ./git/gitconfig ~/.gitconfig
fi 

cp ./git/gitignore ~/.gitignore
git config --global core.excludesfile ~/.gitignore
