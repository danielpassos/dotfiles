if [ -e ~/.bashrc.ori ]; then
  . ~/.bashrc.ori
fi

. ~/.dotfiles/bash/env.sh
. ~/.dotfiles/bash/prompt.sh
. ~/.dotfiles/bash/aliases.sh
. ~/.dotfiles/bash/path.sh

. ~/.local_config.sh

# RVM
if [ -e ~/.rvm/scripts/rvm ] ; then
    . ~/.rvm/scripts/rvm
    . ~/.rvm/scripts/completion
fi

# nvm
if [ -f "$HOME/.nvm/nvm.sh" ]  ; then
	. "$HOME/.nvm/nvm.sh"
fi

# homebrew/bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi
