#!/bin/bash

echo "Configuring bash"

if [ ! -f ~/.local_config.sh ]; then
	touch ~/.local_config.sh
fi

mkdir -p ~/.dotfiles/bash

cp ./bash/alias          ~/.dotfiles/bash/
cp ./bash/env            ~/.dotfiles/bash/
cp ./bash/bashrc         ~/.dotfiles/
cp ./bash/bash_profile   ~/.dotfiles/

ln -sf ~/.dotfiles/bashrc        ~/.bashrc
ln -sf ~/.dotfiles/bash_profile  ~/.bash_profile
