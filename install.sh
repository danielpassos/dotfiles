# Bash Files

mkdir -p ~/bin/dotfiles/bash
cp ./bash/bash_prompt_color ~/bin/dotfiles/bash/
cp ./bashrc  ~/bin/dotfiles/
cp ./bash/aliases ~/bin/dotfiles/bash/
cp ./bash/config ~/bin/dotfiles/bash/
cp ./bash/env ~/bin/dotfiles/bash/
cp ./bash/path ~/bin/dotfiles/bash/

# Scripts Files

mkdir -p ~/bin/dotfiles/script
cp ./script/gem_completion.sh ~/bin/dotfiles/script/
cp ./script/git_completion.sh ~/bin/dotfiles/script/

# Links

ln -sF ~/bin/dotfiles/bashrc ~/.bashrc
