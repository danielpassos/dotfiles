############################################################
## PATH
############################################################

PATH=.:$PATH
PATH=$PATH:$HOME/.dotfiles/bin

# RVM
if [ -d $HOME/.rvm ] ; then
    PATH=$PATH:$HOME/.rvm/bin
fi
