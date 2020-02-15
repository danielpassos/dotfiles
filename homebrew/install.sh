# Install Homebrew
if test ! "$(command -v brew)"; then
  echo "Installing Homebrew for you."
  if test "$(uname)" = "Darwin"; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(uname)" = "Linux"; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
  fi
fi

# Install brew apps
brew bundle --file=./homebrew/Brewfile

if [[ -e ~/.Brewfile ]]; then
  brew bundle --file=~/.Brewfile
fi
