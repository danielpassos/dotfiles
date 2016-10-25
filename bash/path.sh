############################################################
## PATH
############################################################

PATH=.:$PATH
PATH=$PATH:$HOME/.dotfiles/bin
PATH=$PATH:/usr/local/bin:/usr/local/sbin

# RVM
if [ -d $HOME/.rvm ] ; then
    PATH=$PATH:$HOME/.rvm/bin
fi

# homebrew/bash-completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi