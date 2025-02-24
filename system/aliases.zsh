alias hosts='sudo vim /etc/hosts'

alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

alias psgrep="ps aux | egrep -v egrep | egrep"

alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

alias obf="open ~/.Brewfile"

alias uuid='uuidgen | tr "[:upper:]" "[:lower:]"'

alias reload!='. ~/.zshrc && clear'
