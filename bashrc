if [ -e ~/.bashrc.ori ]; then
  . ~/.bashrc.ori
fi

. ~/.dotfiles/bash/env.sh
. ~/.dotfiles/bash/prompt.sh
. ~/.dotfiles/bash/aliases.sh
. ~/.dotfiles/bash/path.sh

. ~/.local_config.sh

if [ -e ~/.rvm/scripts/rvm ] ; then
    . ~/.rvm/scripts/rvm
    . ~/.rvm/scripts/completion
fi
