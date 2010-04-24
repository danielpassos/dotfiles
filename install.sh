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
cp ./script/git_completion.sh ~/bin/dotfiles/script/

#Terminal

cp -a ./bundle/terminal/TerminalColours.bundle /Library/Application\ Support/SIMBL/Plugins/
cp -a ./bundle/terminal/TerminalTabSwitching.bundle /Library/Application\ Support/SIMBL/Plugins/

# Links

ln ~/.bashrc ~/bin/dotfiles/bashrc
