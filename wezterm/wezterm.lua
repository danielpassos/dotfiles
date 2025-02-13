local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Hacktober'
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 18

config.window_frame = {
  font = require('wezterm').font 'Roboto',
  font_size = 18,
}
config.window_close_confirmation = 'NeverPrompt'

use_fancy_tab_bar = false

return config
