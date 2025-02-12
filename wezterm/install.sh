echo "* Installing wezterm"
brew install wezterm

echo "* Copying wezterm config"
cp ./wezterm/wezterm.lua "$HOME/.wezterm.lua"
