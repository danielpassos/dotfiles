local wezterm = require 'wezterm'

local M = {}

function M.apply(config)
  config.color_scheme = 'Hacktober'
  config.font = wezterm.font('JetBrains Mono')
  config.font_size = 18
  
  -- =========================================================================
  -- Prevent accidental app close (⌘ + Q)
  -- -------------------------------------------------------------------------
  -- Shows a confirmation dialog when closing WezTerm.
  --
  -- This protects against:
  -- - accidental ⌘ + Q
  -- - clicking the window close button
  --
  -- Does NOT affect tab closing (⌘ + W), which remains fast.
  -- =========================================================================
  config.window_close_confirmation = 'AlwaysPrompt'

  -- =========================================================================
  -- Tab Bar / Title Bar Styling
  -- -------------------------------------------------------------------------
  -- This is the MOST important knob for tab size in WezTerm.
  --
  -- WezTerm does NOT provide direct "tab height" or vertical padding controls.
  -- Instead, the tab bar size is driven by the window_frame font.
  --
  -- Increasing font_size here makes:
  -- - tab labels larger
  -- - tab bar visually taller
  -- - overall top area feel more "substantial"
  --
  -- We also use a bold font to improve readability and visual weight.
  -- =========================================================================
  config.window_frame = {
    font = wezterm.font { family = 'Roboto', weight = 'Bold' },
    font_size = 18,
    active_titlebar_bg = '#292C34',
    inactive_titlebar_bg = '#292C34',
  }

  -- =========================================================================
  -- Tab Bar Mode
  -- -------------------------------------------------------------------------
  -- Use the "fancy" tab bar (native style).
  --
  -- The retro tab bar is more customizable but looks flat and small.
  -- The fancy tab bar has better visual weight and integrates better
  -- with macOS aesthetics.
  -- =========================================================================
  config.use_fancy_tab_bar = true

  -- Always show the tab bar for consistency (even with 1 tab)
  config.hide_tab_bar_if_only_one_tab = false

  -- =========================================================================
  -- Colors
  -- -------------------------------------------------------------------------
  -- We align tab bar colors with the main background for a cohesive look,
  -- and use contrast to highlight the active tab.
  -- =========================================================================
  config.colors = {
    background = '#292C34',
    tab_bar = {
      background = '#292C34',
      inactive_tab_edge = '#3a3d46',

      active_tab = {
        bg_color = '#111111',
        fg_color = '#ffffff',
      },

      inactive_tab = {
        bg_color = '#2f323a',
        fg_color = '#9a9a9a',
      },

      inactive_tab_hover = {
        bg_color = '#3a3d46',
        fg_color = '#d0d0d0',
      },

      new_tab = {
        bg_color = '#2f323a',
        fg_color = '#9a9a9a',
      },

      new_tab_hover = {
        bg_color = '#3a3d46',
        fg_color = '#ffffff',
      },
    },
  }

  -- =========================================================================
  -- Window Padding
  -- -------------------------------------------------------------------------
  -- Adds breathing room around terminal content.
  --
  -- Without this, content feels "glued" to the edges, especially top-left.
  -- This improves overall visual balance with the tab bar.
  -- =========================================================================
  config.window_padding = {
    left = 8,
    right = 8,
    top = 6,
    bottom = 6,
  }
end

return M
