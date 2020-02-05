alias ls='ls'
alias lsa='ls -A'
alias lsf='ls -A'
alias lsd='ls | grep "^d"'

if test "$(command -v colorls)"; then
  alias ls='colorls --sd'
	alias lsa='colorls -A --sd'
	alias lsf='colorls -f'
	alias lsd='colorls -d'
fi

alias hosts='sudo vim /etc/hosts'

alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

alias psgrep="ps aux | egrep -v egrep | egrep"

alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias obf="open ~/.Brewfile"

# Get macOS Software Updates, Homebrew and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade'
