# Bash Files

cp ./.bash_profile ~/

mkdir -p ~/bin/dotfiles/bash
cp ./bashrc  ~/bin/dotfiles/
cp ./bash/* ~/bin/dotfiles/bash/

# Scripts Files

mkdir -p ~/bin/dotfiles/script
cp ./script/* ~/bin/dotfiles/script/

# Links

mv ~/.bashrc ~/bashrc_backup
ln -sF ~/bin/dotfiles/bashrc ~/.bashrc
