echo "* Installing brew apps"
brew bundle --file=./homebrew/Brewfile >/dev/null

if [[ -e ~/.Brewfile ]]; then
  echo "* Installing brew apps (~/.Brewfile)"
  brew bundle --file=~/.Brewfile >/dev/null
fi
