echo "* Installing mas"
brew instal mas

if [[ -e ~/.Brewfile ]]; then
  echo "* Installing brew personal apps (~/.Brewfile)"
  brew bundle --file=~/.Brewfile
fi
