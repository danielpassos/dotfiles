local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = 'Hacktober'
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 18

config.window_frame = {
  font = require('wezterm').font 'Roboto',
  font_size = 18,
}
config.window_close_confirmation = 'NeverPrompt'

config.keys = {
  {
    key = 'E',
    mods = 'CTRL|SHIFT',
    action = act.PromptInputLine {
      description = 'Enter new name for tab',
      action = wezterm.action_callback(function(window, pane, line)
        -- line will be `nil` if they hit escape without entering anything
        -- An empty string if they just hit enter
        -- Or the actual line of text they wrote
        if line then
          window:active_tab():set_title(line)
        end
      end),
    },
  }
}

use_fancy_tab_bar = false

return config
