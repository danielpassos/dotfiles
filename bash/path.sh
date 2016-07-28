############################################################
## PATH
############################################################

PATH=.:$PATH
PATH=$PATH:$HOME/.dotfiles/bin
PATH=$PATH:/usr/local/bin:/usr/local/sbin

if [ -d $HOME/.rvm ] ; then
    PATH=$PATH:$HOME/.rvm/bin
fi