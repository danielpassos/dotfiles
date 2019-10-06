if [ -d /usr/local/opt/powerlevel9k/ ]; then
	POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir rbenv vcs)
	POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status ssh root_indicator background_jobs history time)
	POWERLEVEL9K_PROMPT_ON_NEWLINE=true
	POWERLEVEL9K_RPROMPT_ON_NEWLINE=false
	POWERLEVEL9K_MODE='nerdfont-complete'
	POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
	local user_symbol="$ "
	if [[ $(print -P "%#") =~ "#" ]]; then
	    user_symbol = "# "
	fi
	POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{white}%K{red}%} $user_symbol%{%b%f%k%F{red}%} %{%f%}"
	POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
	source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme
fi
