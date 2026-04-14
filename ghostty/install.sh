echo "* Installing Ghostty"
brew install ghostty

echo "* Copying ghostty config"

mkdir -p "$HOME/.config/ghostty"
cp ./ghostty/config "$HOME/.config/ghostty/config"
