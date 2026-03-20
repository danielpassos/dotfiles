echo "* Installing wezterm"
brew install wezterm

echo "* Copying wezterm config"

mkdir -p "$HOME/.config/wezterm"
cp ./wezterm/wezterm.lua "$HOME/.config/wezterm/wezterm.lua"

mkdir -p "$HOME/.config/wezterm/config"
for f in ./wezterm/*.lua; do
  [[ "$(basename "$f")" != "wezterm.lua" ]] && cp "$f" "$HOME/.config/wezterm/config/"
done
