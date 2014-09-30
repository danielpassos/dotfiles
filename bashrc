if [ -e ~/.bashrc.ori ]; then
  . ~/.bashrc.ori
fi

. ~/.dotfiles/bash/env
. ~/.dotfiles/bash/config
. ~/.dotfiles/bash/aliases
. ~/.dotfiles/bash/path

. ~/.dotfiles/script/cordova_completion.sh
. ~/.dotfiles/script/git_completion.sh
. ~/.dotfiles/script/gem_completion.sh
. ~/.dotfiles/script/tmux_completion.sh
. ~/.dotfiles/script/maven_completion.sh
. ~/.dotfiles/script/vagrant_completion.sh

. ~/.local_config

if [ -e ~/.rvm/scripts/rvm ] ; then
    . ~/.rvm/scripts/rvm
    . ~/.rvm/scripts/completion
fi