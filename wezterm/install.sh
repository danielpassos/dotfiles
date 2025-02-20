echo "* Installing wezterm"
brew install wezterm

echo "* Copying wezterm config"
mkdir -p "$HOME/.config/wezterm"
cp ./wezterm/wezterm.lua "$HOME/.config/wezterm/wezterm.lua"
