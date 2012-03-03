# Remove old version
rm -rf ~/bin/dotfiles

# Bash Files

cp ./.bash_profile ~/

mkdir -p ~/bin/dotfiles/bash
cp ./bashrc  ~/bin/dotfiles/
cp ./bash/* ~/bin/dotfiles/bash/

# Scripts Files

mkdir -p ~/bin/dotfiles/script
cp ./script/* ~/bin/dotfiles/script/

# Links

ln -sF ~/bin/dotfiles/bashrc ~/.bashrc

# Programs

mkdir -p ~/bin/dotfiles/programs
cp ./programs/* ~/bin/dotfiles/programs/
