if [ -e ~/.bashrc.ori ]; then
  . ~/.bashrc.ori
fi

. ~/.dotfiles/bash/env
. ~/.dotfiles/bash/config
. ~/.dotfiles/bash/aliases
. ~/.dotfiles/bash/path

. ~/.local_config

if [ -e ~/.rvm/scripts/rvm ] ; then
    . ~/.rvm/scripts/rvm
    . ~/.rvm/scripts/completion
fi
