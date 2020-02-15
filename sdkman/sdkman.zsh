if [[ -d $HOME/.sdkman ]]; then
  export SDKMAN_DIR="$HOME/.sdkman"
  # shellcheck source=$HOME/.sdkman/bin/sdkman-init.sh
  [[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
fi
