powerlevel10k="$(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme"
if [[ -f $powerlevel10k ]]; then
  # shellcheck disable=SC1090
  source "$powerlevel10k"
  # shellcheck disable=SC1090
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fi
