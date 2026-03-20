local wezterm = require 'wezterm'
local config = wezterm.config_builder()

require('config.appearance').apply(config)
require('config.keys').apply(config)
require('config.tabs').apply(config)

return config
