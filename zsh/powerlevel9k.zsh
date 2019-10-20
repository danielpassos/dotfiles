if [[ -d /usr/local/opt/powerlevel9k/ ]]; then
	export POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir rbenv vcs)
	export POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ssh root_indicator background_jobs history time)
	export POWERLEVEL9K_PROMPT_ON_NEWLINE=true
	export POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
	export POWERLEVEL9K_MODE='nerdfont-complete'
	export POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
	user_symbol="$ "
	if [[ $(print -P "%#") =~ "#" ]]; then
	    user_symbol="# "
	fi
	export POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{white}%K{red}%} $user_symbol%{%b%f%k%F{red}%} %{%f%}"
	export POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
	source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
fi
