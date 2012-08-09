. ~/.bin/dotfiles/bash/env
. ~/.bin/dotfiles/bash/config
. ~/.bin/dotfiles/bash/aliases
. ~/.bin/dotfiles/bash/path

. ~/.bin/dotfiles/script/git_completion.sh
. ~/.bin/dotfiles/script/gem_completion.sh
. ~/.bin/dotfiles/script/tmux_completion.sh

complete -C ~/.bin/dotfiles/script/capistrano_completion -o default cap
complete -C ~/.bin/dotfiles/script/rake_completion -o default cap
