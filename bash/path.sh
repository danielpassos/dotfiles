############################################################
## PATH
############################################################

PATH=.:$PATH
PATH=$PATH:$HOME/.dotfiles/bin

# RVM
if [ -d $HOME/.rvm ] ; then
    PATH=$PATH:$HOME/.rvm/bin
fi

# Rust
if [ -d $HOME/.rvm ] ; then
    PATH=$PATH:$HOME/.cargo/bin:$PATH
fi
