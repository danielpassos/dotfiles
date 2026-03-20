local wezterm = require 'wezterm'
local act = wezterm.action

local M = {}

function M.apply(config)
  -- =========================================================================
  -- ALT / Option behavior (macOS)
  -- -------------------------------------------------------------------------
  -- Ensure Option behaves as a pure modifier instead of producing composed
  -- characters. This makes custom Option-based keybindings more reliable.
  -- =========================================================================
  config.send_composed_key_when_left_alt_is_pressed = false
  config.send_composed_key_when_right_alt_is_pressed = false

  config.keys = {
    {
      -- Open a new tab starting from the user's HOME directory.
      -- We intentionally avoid inheriting the current pane working directory
      -- so every new tab starts from a predictable place.
      key = 't',
      mods = 'CMD',
      action = act.SpawnCommandInNewTab {
        cwd = wezterm.home_dir,
      },
    },
    {
      -- Rename the current tab manually.
      -- Useful when the folder name is not expressive enough to describe
      -- the purpose of the tab.
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

    -- =========================================================================
    -- Tab reordering
    -- -------------------------------------------------------------------------
    -- On a US keyboard:
    --   Shift + [ = {
    --   Shift + ] = }
    --
    -- We bind to the resulting characters because this proved to be the most
    -- reliable mapping for Option + Shift + [ / ] on this setup.
    -- =========================================================================
    {
      -- Move the current tab one position to the left.
      key = '{',
      mods = 'ALT|SHIFT',
      action = act.MoveTabRelative(-1),
    },
    {
      -- Move the current tab one position to the right.
      key = '}',
      mods = 'ALT|SHIFT',
      action = act.MoveTabRelative(1),
    },

    -- =========================================================================
    -- Move tab to an absolute position
    -- -------------------------------------------------------------------------
    -- Uses CTRL + ALT + number to avoid conflicts with macOS shortcuts that
    -- already use CMD + SHIFT + number.
    -- =========================================================================
    {
      key = '1',
      mods = 'CTRL|ALT',
      action = act.MoveTab(0),
    },
    {
      key = '2',
      mods = 'CTRL|ALT',
      action = act.MoveTab(1),
    },
    {
      key = '3',
      mods = 'CTRL|ALT',
      action = act.MoveTab(2),
    },
    {
      key = '4',
      mods = 'CTRL|ALT',
      action = act.MoveTab(3),
    },
    {
      key = '5',
      mods = 'CTRL|ALT',
      action = act.MoveTab(4),
    },
    {
      key = '6',
      mods = 'CTRL|ALT',
      action = act.MoveTab(5),
    },
    {
      key = '7',
      mods = 'CTRL|ALT',
      action = act.MoveTab(6),
    },
    {
      key = '8',
      mods = 'CTRL|ALT',
      action = act.MoveTab(7),
    },
    {
      key = '9',
      mods = 'CTRL|ALT',
      action = act.MoveTab(8),
    },

    -- =========================================================================
    -- Shell editing: macOS-style word navigation
    -- -------------------------------------------------------------------------
    -- These bindings make terminal editing feel closer to native macOS text
    -- fields while still using standard shell movement commands underneath.
    --
    -- macOS expectation:
    --   Option + LeftArrow  -> move backward one word
    --   Option + RightArrow -> move forward one word
    --
    -- Shell equivalent:
    --   ALT + B -> backward-word
    --   ALT + F -> forward-word
    -- =========================================================================
    {
      key = 'LeftArrow',
      mods = 'OPT',
      action = act.SendKey {
        key = 'b',
        mods = 'ALT',
      },
    },
    {
      key = 'RightArrow',
      mods = 'OPT',
      action = act.SendKey {
        key = 'f',
        mods = 'ALT',
      },
    },

    -- =========================================================================
    -- Shell editing: line navigation
    -- -------------------------------------------------------------------------
    -- These bindings bring standard macOS "jump to start/end of line" behavior
    -- into the shell command line.
    --
    -- macOS expectation:
    --   Command + LeftArrow  -> beginning of line
    --   Command + RightArrow -> end of line
    --
    -- Shell equivalent:
    --   CTRL + A -> beginning-of-line
    --   CTRL + E -> end-of-line
    -- =========================================================================
    {
      key = 'LeftArrow',
      mods = 'CMD',
      action = act.SendKey {
        key = 'a',
        mods = 'CTRL',
      },
    },
    {
      key = 'RightArrow',
      mods = 'CMD',
      action = act.SendKey {
        key = 'e',
        mods = 'CTRL',
      },
    },

    -- =========================================================================
    -- Shell editing: deletion helpers
    -- -------------------------------------------------------------------------
    -- These bindings make deletion behave more like native macOS apps.
    --
    -- Command + Backspace:
    --   Delete from the cursor back to the beginning of the line
    --   Shell equivalent: CTRL + U
    --
    -- Option + Delete:
    --   Delete the next word forward
    --   Shell equivalent: ALT + D
    -- =========================================================================
    {
      key = 'Backspace',
      mods = 'CMD',
      action = act.SendKey {
        key = 'u',
        mods = 'CTRL',
      },
    },
    {
      key = 'Delete',
      mods = 'OPT',
      action = act.SendKey {
        key = 'd',
        mods = 'ALT',
      },
    },
  }
end

return M
