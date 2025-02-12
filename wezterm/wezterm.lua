local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Hacktober'
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 18

return config
