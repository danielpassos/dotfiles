local wezterm = require 'wezterm'
local act = wezterm.action

local M = {}

function M.apply(config)
  -- On macOS, Option is ALT in WezTerm.
  -- Left Option is treated as a normal Alt modifier by default.
  config.send_composed_key_when_left_alt_is_pressed = false
  config.send_composed_key_when_right_alt_is_pressed = false

  config.keys = {
    {
      -- Open a new tab starting from HOME instead of inheriting cwd.
      key = 't',
      mods = 'CMD',
      action = act.SpawnCommandInNewTab {
        cwd = wezterm.home_dir,
      },
    },
    {
      -- Rename current tab manually when folder name is not enough.
      key = 'E',
      mods = 'CTRL|SHIFT',
      action = act.PromptInputLine {
        description = 'Enter new name for tab',
        action = wezterm.action_callback(function(window, pane, line)
          if line then
            window:active_tab():set_title(line)
          end
        end),
      },
    },

    -- Move current tab left/right.
    -- On a US keyboard:
    --   Shift + [ = {
    --   Shift + ] = }
    {
      key = '{',
      mods = 'ALT|SHIFT',
      action = act.MoveTabRelative(-1),
    },
    {
      key = '}',
      mods = 'ALT|SHIFT',
      action = act.MoveTabRelative(1),
    }
  }
end

return M
