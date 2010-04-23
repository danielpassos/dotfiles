# Bash Files

mkdir ~/bin/dotfiles/bash
cp ./bashrc  ~/bin/dotfiles/
cp ./bash/aliases ~/bin/dotfiles/bash/
cp ./bash/bash_prompt_color ~/bin/dotfiles/bash/
cp ./bash/config ~/bin/dotfiles/bash/
cp ./bash/env ~/bin/dotfiles/bash/

# Scripts Files

mkdir ~/bin/dotfiles/script
cp ./script/gem_completion.sh ~/bin/dotfiles/script/

# Links

ln ~/.bashrc ~/bin/dotfiles/bashrc