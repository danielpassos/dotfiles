if [[ -d $HOME/.nvm ]]; then
	export NVM_DIR="$HOME/.nvm"
	# shellcheck source=$NVM_DIR/nvm.sh
	[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
	# shellcheck source=$NVM_DIR/bash_completion
	[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"
fi
