##############################################################################
# History Configuration                                                      #
##############################################################################
export HISTFILE=$HOME/.zsh_history
export SAVEHIST=10000    # Number of history entries to save to disk
export HISTSIZE=10000    # Lines of history to keep in memory

setopt appendhistory     # Append history to the file (no overwriting)
setopt sharehistory      # Share history across terminals
setopt incappendhistory  # Immediately append to the file, not when term killed
