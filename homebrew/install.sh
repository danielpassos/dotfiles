# Install brew apps
brew bundle --file=./homebrew/Brewfile

if [[ -e ~/.Brewfile ]]; then
  brew bundle --file=~/.Brewfile
fi
