# Install antigen
if [[ ! -f ~/.antigen.zsh ]]; then
  curl -s -L git.io/antigen >~/.antigen.zsh
fi

# Install oh-my-zsh
if [[ ! -d ~/.oh-my-zsh/ ]]; then
  echo "* Installing oh-my-zsh"
  git clone --quiet https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh >/dev/null
  ZSH_PATH=$(command -v zsh)
  if ! grep -q "$ZSH_PATH" '/etc/shells'; then
    echo "$ZSH_PATH" | sudo tee -a /etc/shells
  fi
  chsh -s "$ZSH_PATH"
fi
