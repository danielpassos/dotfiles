echo "* Installing brew dotfiles apps"
brew bundle --file=./homebrew/Brewfile >/dev/null

if [[ -e ~/.Brewfile ]]; then
  echo "* Installing brew personal apps (~/.Brewfile)"
  brew bundle --file=~/.Brewfile >/dev/null
fi
