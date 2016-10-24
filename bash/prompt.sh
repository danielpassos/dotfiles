# Show the git branch and dirty state in the prompt.
# Borrowed from: http://henrik.nyh.se/2008/12/git-dirty-prompt

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/\[git\:\1\] $(parse_git_dirty)/"
}


function rvm_version {
	if [ -d $HOME/.rvm ] ; then
    	RVM_VERSION=`~/.rvm/bin/rvm-prompt`
    	if [[ -f "$(pwd)/Rakefile" ]] && [[ ! -z "$RVM_VERSION" ]]; then
	        echo "[${RVM_VERSION}] "
	    fi
	fi
}

function user {
	local SSH_IP=`echo $SSH_CLIENT | awk '{ print $1 }'`
  local SSH2_IP=`echo $SSH2_CLIENT | awk '{ print $1 }'`
  if [ $SSH2_IP ] || [ $SSH_IP ] ; then
  	echo "\u@\h"
  else
  	echo "\u"
  fi
}

bash_prompt() {

  # Colors from http://wiki.archlinux.org/index.php/Color_Bash_Prompt
  BIRed='\e[1;91m'        # Red
  BIGreen='\e[1;92m'      # Green
  BIPurple='\e[1;95m'     # Purple
  BIWhite='\e[1;97m'      # White
  Color_Off='\e[0m'       # Text Reset

  # PS1
  PS1="\n\[$BIRed\][$(user)]: \[$BIWhite\]\w \[$BIPurple\]\$(rvm_version)\[$BIGreen\]\$(parse_git_branch)\[$Color_Off\] \n→ "

}

bash_prompt
unset bash_prompt
