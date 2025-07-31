if [ -f "$(brew --prefix asdf)/libexec/asdf.sh" ]; then
  . "$(brew --prefix asdf)/libexec/asdf.sh"
fi

if [ -f "$(brew --prefix asdf)/etc/bash_completion.d/asdf" ]; then
  fpath+=("$(brew --prefix asdf)/etc/bash_completion.d")
  autoload -Uz compinit && compinit
fi
