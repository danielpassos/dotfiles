################################################################################
## Bash
################################################################################

alias reload='source ~/.bash_profile && echo "sourced ~/.bash_profile"'

alias ls='ls -Glah'
alias grep='grep'
alias fgrep='fgrep'

if [[ "$system" == 'Linux' ]]; then
   alias ls='ls -Glah --color=auto'
   alias grep='grep --color=auto'
   alias fgrep='fgrep --color=auto'
fi

alias lsd='ls -l | grep "^d"'		# List only directories

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias hosts='sudo vim /etc/hosts'

alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias psgrep="ps aux | egrep -v egrep | egrep"

################################################################################
## RVM
################################################################################
alias rv='echo $(~/.rvm/bin/rvm-prompt)'

################################################################################
## git
################################################################################
alias gk='gitk --all 2>/dev/null &'

################################################################################
## Docker & k8s
################################################################################

alias d='docker'
alias k='kubectl'
